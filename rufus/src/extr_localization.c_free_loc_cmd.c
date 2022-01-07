
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unum; int * txt; } ;
typedef TYPE_1__ loc_cmd ;


 int free (TYPE_1__*) ;
 int safe_free (int ) ;

void free_loc_cmd(loc_cmd* lcmd)
{
 if (lcmd == ((void*)0))
  return;
 safe_free(lcmd->txt[0]);
 safe_free(lcmd->txt[1]);
 safe_free(lcmd->unum);
 free(lcmd);
}
