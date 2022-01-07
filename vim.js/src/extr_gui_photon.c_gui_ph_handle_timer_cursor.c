
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PtWidget_t ;
typedef int PtCallbackInfo_t ;


 scalar_t__ BLINK_OFF ;
 scalar_t__ BLINK_ON ;
 int FALSE ;
 int PtSetResource (int ,int ,int ,int ) ;
 int Pt_ARG_TIMER_INITIAL ;
 int Pt_CONTINUE ;
 int TRUE ;
 int blink_offtime ;
 int blink_ontime ;
 scalar_t__ blink_state ;
 int gui_ph_timer_cursor ;
 int gui_undraw_cursor () ;
 int gui_update_cursor (int ,int ) ;

__attribute__((used)) static int
gui_ph_handle_timer_cursor(
 PtWidget_t *widget,
 void *data,
 PtCallbackInfo_t *info)
{
    if (blink_state == BLINK_ON)
    {
 gui_undraw_cursor();
 blink_state = BLINK_OFF;
 PtSetResource(gui_ph_timer_cursor, Pt_ARG_TIMER_INITIAL,
  blink_offtime, 0);
    }
    else
    {
 gui_update_cursor(TRUE, FALSE);
 blink_state = BLINK_ON;
 PtSetResource(gui_ph_timer_cursor, Pt_ARG_TIMER_INITIAL,
  blink_ontime, 0);
    }
    return Pt_CONTINUE;
}
