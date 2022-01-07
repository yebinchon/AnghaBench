
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ command; scalar_t__ ctrl_id; int ** txt; } ;
typedef TYPE_1__ loc_cmd ;
struct TYPE_12__ {scalar_t__ id; int name; } ;
typedef int BOOL ;


 size_t ARRAYSIZE (TYPE_2__*) ;
 int FALSE ;
 size_t IDD_DIALOG ;



 scalar_t__ MSG_000 ;
 int TRUE ;
 int add_dialog_command (int,TYPE_1__*) ;
 int add_message_command (TYPE_1__*) ;
 scalar_t__ atoi (int *) ;
 TYPE_2__* control_id ;
 scalar_t__ default_msg_table ;
 int free_loc_cmd (TYPE_1__*) ;
 int get_loc_data_file (int *,TYPE_1__*) ;
 TYPE_1__* get_locale_from_name (int *,int ) ;
 TYPE_2__* loc_dlg ;
 int luprint (char*) ;
 int luprintf (char*,int *) ;
 scalar_t__ msg_table ;
 scalar_t__ safe_strcmp (int *,int ) ;
 scalar_t__ safe_strncmp (int *,char const*,int) ;
 int uprintf (char*,int *) ;

BOOL dispatch_loc_cmd(loc_cmd* lcmd)
{
 size_t i;
 static int dlg_index = 0;
 loc_cmd* base_locale = ((void*)0);
 const char* msg_prefix = "MSG_";

 if (lcmd == ((void*)0))
  return FALSE;

 if (lcmd->command <= 128) {

  if (safe_strncmp(lcmd->txt[0], msg_prefix, 4) == 0) {

   if ((lcmd->txt[0] == ((void*)0)) || (lcmd->command != 128)) {
    luprint("only the [t]ext command can be applied to a message (MSG_###)\n");
    goto err;
   }

   lcmd->ctrl_id = MSG_000 + atoi(&(lcmd->txt[0][4]));
   if (lcmd->ctrl_id == MSG_000) {

    luprintf("failed to convert the numeric value in '%'\n", lcmd->txt[0]);
    goto err;
   }
   add_message_command(lcmd);
   free_loc_cmd(lcmd);
   return TRUE;
  }
  for (i=0; i<ARRAYSIZE(control_id); i++) {
   if (safe_strcmp(lcmd->txt[0], control_id[i].name) == 0) {
    lcmd->ctrl_id = control_id[i].id;
    break;
   }
  }
  if (lcmd->ctrl_id < 0) {
   luprintf("unknown control '%s'\n", lcmd->txt[0]);
   goto err;
  }
 }


 if (msg_table == default_msg_table) {
  free_loc_cmd(lcmd);
  return TRUE;
 }

 switch(lcmd->command) {

 case 128:
  add_dialog_command(dlg_index, lcmd);
  break;
 case 129:
  if ((lcmd->ctrl_id-IDD_DIALOG) > ARRAYSIZE(loc_dlg)) {
   luprintf("'%s' is not a group ID\n", lcmd->txt[0]);
   goto err;
  }
  dlg_index = lcmd->ctrl_id - IDD_DIALOG;
  free_loc_cmd(lcmd);
  break;
 case 130:
  base_locale = get_locale_from_name(lcmd->txt[0], FALSE);
  if (base_locale != ((void*)0)) {
   uprintf("localization: using locale base '%s'\n", lcmd->txt[0]);
   get_loc_data_file(((void*)0), base_locale);
  } else {
   luprintf("locale base '%s' not found - ignoring", lcmd->txt[0]);
  }
  free_loc_cmd(lcmd);
  break;
 default:
  free_loc_cmd(lcmd);
  break;
 }
 return TRUE;

err:
 free_loc_cmd(lcmd);
 return FALSE;
}
