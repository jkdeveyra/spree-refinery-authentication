module Spree
  module AuthenticationHelpers
    def self.included(receiver)
      receiver.send :helper_method, :spree_login_path
      receiver.send :helper_method, :spree_signup_path
      receiver.send :helper_method, :spree_logout_path
      receiver.send :helper_method, :spree_current_user

      # ensure refinery_user? helper method is always available
      receiver.send :helper_method, :refinery_user?
    end

    def spree_current_user
      current_refinery_user
    end

    def spree_login_path
      refinery.login_path
    end

    def spree_signup_path
      refinery.signup_path
    end

    def spree_logout_path
      refinery.logout_path
    end
  end
end
