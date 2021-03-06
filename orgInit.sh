sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s -n --userprefix admin --userdomain electron.demo

sfdx force:source:push
sfdx force:user:permset:assign -n electron

sfdx force:apex:execute -f scripts/generateAccounts.apex
sfdx force:apex:execute -f scripts/createReema.apex

sfdx shane:theme:activate -n Electron
sfdx force:org:open
sfdx shane:user:password:set -g User -l User -p sfdx1234