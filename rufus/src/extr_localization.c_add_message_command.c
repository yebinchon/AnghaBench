
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ctrl_id; int ** txt; } ;
typedef TYPE_1__ loc_cmd ;


 scalar_t__ MSG_000 ;
 scalar_t__ MSG_MAX ;
 int ** msg_table ;
 int safe_free (int *) ;
 int uprintf (char*) ;

void add_message_command(loc_cmd* lcmd)
{
 if (lcmd == ((void*)0)) {
  uprintf("localization: invalid parameter for add_message_command\n");
  return;
 }

 if ((lcmd->ctrl_id <= MSG_000) || (lcmd->ctrl_id >= MSG_MAX)) {
  uprintf("localization: invalid MSG_ index\n");
  return;
 }

 safe_free(msg_table[lcmd->ctrl_id-MSG_000]);
 msg_table[lcmd->ctrl_id-MSG_000] = lcmd->txt[1];
 lcmd->txt[1] = ((void*)0);
}
