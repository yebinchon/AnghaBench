
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_changedtick; scalar_t__ b_may_swap; int b_changed; } ;


 scalar_t__ FALSE ;
 int TRUE ;
 int bt_dontwrite (TYPE_1__*) ;
 int change_warning (int ) ;
 int changed_int () ;
 TYPE_1__* curbuf ;
 scalar_t__ emsg_silent ;
 scalar_t__ im_is_preediting () ;
 int ml_open_file (TYPE_1__*) ;
 int msg_scroll ;
 scalar_t__ need_wait_return ;
 int out_flush () ;
 int ui_delay (long,int ) ;
 int wait_return (int ) ;
 scalar_t__ xim_changed_while_preediting ;

void
changed()
{
    if (!curbuf->b_changed)
    {
 int save_msg_scroll = msg_scroll;



 change_warning(0);



 if (curbuf->b_may_swap



  )
 {
     ml_open_file(curbuf);





     if (need_wait_return && emsg_silent == 0)
     {
  out_flush();
  ui_delay(2000L, TRUE);
  wait_return(TRUE);
  msg_scroll = save_msg_scroll;
     }
 }
 changed_int();
    }
    ++curbuf->b_changedtick;
}
