class TestBuild < ActiveRecord::Base
  attr_accessible :author,
                  :build_id,
                  :ci_source_id,
                  :commit,
                  :committer,
                  :compare,
                  :config,
                  :duration,
                  :finished,
                  :started,
                  :message,
                  :state

  validates_presence_of :ci_source_id
  belongs_to :ci_source

  default_scope order('started DESC')

  before_save :set_started_and_finished_to_now
  def set_started_and_finished_to_now
    self.started = Time.now if self.started.nil?
    self.finished = Time.now if self.finished.nil?
  end

  def self.create_from(build, ci_source_id)
    begin
      new_build = where( build_id: build.number, 
                         ci_source_id: ci_source_id).first_or_create
      new_build.attributes = {
        author:       build.commit.author_name, 
        commit:       build.commit_id,
        committer:    build.commit.committer_name,
        compare:      build.commit.compare_url, 
        config:       build.config[:rvm],
        duration:     build.duration,
        finished:     build.finished_at,
        started:      build.started_at,
        message:      build.commit.message, 
        state:        build.state
      }
      new_build.save
      new_build
    rescue

    end
  end
end
