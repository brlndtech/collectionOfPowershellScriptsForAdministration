$password = Read-Host "Enter the password value for all the local account : "-AsSecureString
$users = @('gsb','bva','cge','dsa','fga','fmo','frc','gcu','jpa','jvi','kgi','ldu','lle','mbu','pkh','sma','tvi','yge')
for ( $i = 0; $i -lt $users.count; $i++)  {
    New-LocalUser $users[$i] -Password $password -FullName $users[$i] -PasswordNeverExpires
    Add-LocalGroupMember -Group "Administrators" -Member $users[$i]
}