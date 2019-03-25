#!/bin/bash

sfdx force:org:create -f config/project-scratch-def.json -a FlowsSurveysADK --setdefaultusername -d 1

#add pckg IDs to Idnum
sfdx force:package:install --package 04tB0000000ATMK -w 20


#sfdx force:mdapi:deploy --deploydir mdapi-source/app-config

#sfdx force:source:push -f

#sfdx assign permission sets
sfdx force:user:permset:assign -n SurveyCreator
#assign flows perm set..

# Include the comprehensive plan to load all data items

sfdx force:apex:execute -f config/create-demo-data-setup.apex

#data tree import...


sfdx force:org:open

