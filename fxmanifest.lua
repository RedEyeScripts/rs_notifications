fx_version 'cerulean'

lua54 'yes'
game 'gta5'
version '1.10.2'
author 'ESX-Framework'
description 'Official NUI Notification system for ESX'

shared_script '@rs_base/import.lua'

client_scripts { 'Notify.lua' }

ui_page 'nui/index.html'

files {
    'nui/index.html',
    'nui/js/*.js',
    'nui/css/*.css',
}
