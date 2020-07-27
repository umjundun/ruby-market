class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.project_expired_notice.subject
  #
  def project_expired_notice
    @projects = params[:project]

    mail to: @project.user.email, subject: "Project has expired"
  end
end
