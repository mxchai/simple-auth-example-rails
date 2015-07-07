class RegistrationsController < Devise::RegistrationsController  
  respond_to :json

  # When the creatinon is supposed to be successful i.e.
  # valid email and a password > 8 characters, Rails returns
  # my ajax call with a "NoMethodError in RegistrationsController#create

  # Does that mean I have to have a create method? What do I put inside?

  # Without the create method, the controller responds fine when there are
  # errors e.g. {"errors":{"email":["is invalid"],"password":["is too short (minimum is 8 characters)"]}}

  # def create
  #   super do |user|
  #     data = {
  #       token:      user.authentication_token,
  #       email: user.email
  #     }
  #     render json: data, status: 201 and return
  #   end
  # end
end  