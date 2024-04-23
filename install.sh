
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"




print_modname() {
  ui_print "****Package cache cleaner by kolass rexon j*****"
}

on_install() {
  ui_print "- Extracting module files"
  ui_print "Reboot will take a while, be patient XD"
  ui_print "Module will nuke itself next reboot" 
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
 
  set_perm_recursive $MODPATH 0 0 0755 0644
}