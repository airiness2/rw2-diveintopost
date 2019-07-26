class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: '登録完了'
  end

  def delete_agenda_mail(team, agenda, email)
    @team = team
    @agenda = agenda
    @email = email
    mail to: @email, subject: 'アジェンダが削除されました！'
  end

end
