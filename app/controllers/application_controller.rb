class ApplicationController < ActionController::Base
    include ApplicationHelper
    protect_from_forgery with: :null_session
            def after_sign_in_path_for(resource)
                "/signedinuserprofile"
            end
            before_action :set_cache_buster

      def set_cache_buster
        response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
        response.headers["Pragma"] = "no-cache"
        response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
      end

end
