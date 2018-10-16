module Gitlab
  module Ci
    module Status
      module Deployment
        class Pending < Status::Extended
          def environment_text
            "This job deploys to %{environmentLink} soon."
          end

          def self.matches?(deployment, user)
            deployment.pending?
          end
        end
      end
    end
  end
end
