class Users::RegistrationsController < Devise::RegistrationsController

  def create
    #スーパークラス(devise)のcreateアクションを呼ぶ
    super
    #ThanksMailerクラスのthanks_mailメソッドを呼び、POSTから受け取ったuserのemailとnameを渡す
    ThanksMailer.thanks_mail(params[:user][:email],params[:user][:name]).deliver
  end

end