
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_focus; } ;


 int BLINK_ON ;
 int FALSE ;
 int PtSetResource (int ,int ,scalar_t__,int ) ;
 int Pt_ARG_TIMER_INITIAL ;
 int TRUE ;
 scalar_t__ blink_offtime ;
 scalar_t__ blink_ontime ;
 int blink_state ;
 scalar_t__ blink_waittime ;
 TYPE_1__ gui ;
 int gui_ph_timer_cursor ;
 int gui_update_cursor (int ,int ) ;

void
gui_mch_start_blink(void)
{

    if (blink_waittime && blink_ontime && blink_offtime && gui.in_focus)
    {
 PtSetResource(gui_ph_timer_cursor, Pt_ARG_TIMER_INITIAL,
  blink_waittime, 0);
 blink_state = BLINK_ON;
 gui_update_cursor(TRUE, FALSE);
    }
}
