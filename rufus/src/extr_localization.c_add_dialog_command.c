
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int str ;
struct TYPE_10__ {int command; int list; int ** txt; } ;
typedef TYPE_2__ loc_cmd ;
struct TYPE_12__ {TYPE_1__* table; } ;
struct TYPE_11__ {int list; } ;
struct TYPE_9__ {void* data; } ;


 int ARRAYSIZE (TYPE_3__*) ;
 int free_loc_cmd (TYPE_2__*) ;
 size_t htab_hash (char*,TYPE_4__*) ;
 TYPE_4__ htab_loc ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 TYPE_3__* loc_dlg ;
 int safe_strcpy (char*,int,int *) ;
 int uprintf (char*) ;

void add_dialog_command(int index, loc_cmd* lcmd)
{
 char str[128];
 loc_cmd* htab_lcmd;
 uint32_t i;
 if ((lcmd == ((void*)0)) || (lcmd->txt[0] == ((void*)0)) || (index < 0) || (index >= ARRAYSIZE(loc_dlg))) {
  uprintf("localization: invalid parameter for add_dialog_command\n");
  return;
 }







 str[0] = index + 0x30;
 str[1] = lcmd->command + 0x30;
 safe_strcpy(&str[2], sizeof(str)-2, lcmd->txt[0]);
 i = htab_hash(str, &htab_loc);
 if (i != 0) {
  htab_lcmd = (loc_cmd*)(htab_loc.table[i].data);
  if (htab_lcmd != ((void*)0)) {
   list_del(&(htab_lcmd->list));
   free_loc_cmd(htab_lcmd);
  }
  htab_loc.table[i].data = (void*)lcmd;
 }
 list_add(&lcmd->list, &loc_dlg[index].list);
}
