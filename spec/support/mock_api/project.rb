module AnsibleTowerClient
  class MockApi
    module Project
      def self.collection
        [
          {
            "id"                        => 4,
            "type"                      => "project",
            "url"                       => "/api/v1/projects/4/",
            "related"                   => {
              "created_by"                     => "/api/v1/users/1/",
              "last_job"                       => "/api/v1/project_updates/623/",
              "notification_templates_error"   => "/api/v1/projects/4/notification_templates_error/",
              "notification_templates_success" => "/api/v1/projects/4/notification_templates_success/",
              "object_roles"                   => "/api/v1/projects/4/object_roles/",
              "notification_templates_any"     => "/api/v1/projects/4/notification_templates_any/",
              "project_updates"                => "/api/v1/projects/4/project_updates/",
              "update"                         => "/api/v1/projects/4/update/",
              "access_list"                    => "/api/v1/projects/4/access_list/",
              "playbooks"                      => "/api/v1/projects/4/playbooks/",
              "schedules"                      => "/api/v1/projects/4/schedules/",
              "teams"                          => "/api/v1/projects/4/teams/",
              "activity_stream"                => "/api/v1/projects/4/activity_stream/",
              "organization"                   => "/api/v1/organizations/1/",
              "last_update"                    => "/api/v1/project_updates/623/"
            },
            "summary_fields"            => {
              "last_job"     => {
                "id"          => 623,
                "name"        => "Demo Project",
                "description" => "A great demo",
                "finished"    => "2017-04-10T08:32:56.496Z",
                "status"      => "successful",
                "failed"      => false
              },
              "last_update"  => {
                "id"          => 623,
                "name"        => "Demo Project",
                "description" => "A great demo",
                "status"      => "successful",
                "failed"      => false
              },
              "organization" => {
                "id"          => 1,
                "name"        => "Default",
                "description" => ""
              },
              "created_by"   => {
                "id"         => 1,
                "username"   => "admin",
                "first_name" => "",
                "last_name"  => ""
              },
              "object_roles" => {
                "admin_role"  => {
                  "description" => "Can manage all aspects of the project",
                  "id"          => 8,
                  "name"        => "Admin"
                },
                "use_role"    => {
                  "description" => "Can use the project in a job template",
                  "id"          => 10,
                  "name"        => "Use"
                },
                "update_role" => {
                  "description" => "May update project or inventory or group using the configured source update system",
                  "id"          => 11,
                  "name"        => "Update"
                },
                "read_role"   => {
                  "description" => "May view settings for the project",
                  "id"          => 9,
                  "name"        => "Read"
                }
              }
            },
            "created"                   => "2016-08-02T17:57:02.914Z",
            "modified"                  => "2017-04-04T07:14:51.147Z",
            "name"                      => "Demo Project",
            "description"               => "A great demo",
            "local_path"                => "_4__demo_project",
            "scm_type"                  => "git",
            "scm_url"                   => "https://github.com/ansible/ansible-tower-samples",
            "scm_branch"                => "master",
            "scm_clean"                 => true,
            "scm_delete_on_update"      => false,
            "credential"                => nil,
            "last_job_run"              => "2017-04-10T08:32:56.496316Z",
            "last_job_failed"           => false,
            "has_schedules"             => false,
            "next_job_run"              => nil,
            "status"                    => "successful",
            "organization"              => 1,
            "scm_delete_on_next_update" => false,
            "scm_update_on_launch"      => false,
            "scm_update_cache_timeout"  => 0,
            "last_update_failed"        => false,
            "last_updated"              => "2017-04-10T08:32:56.496316Z"
          }
        ]
      end

      def self.response
        {
          "count"    => collection.length,
          "next"     => nil,
          "previous" => nil,
          "results"  => collection
        }.to_json
      end
    end
  end
end
