
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ XtIntervalId ;
struct TYPE_2__ {scalar_t__ in_focus; } ;


 int BLINK_ON ;
 int FALSE ;
 int TRUE ;
 scalar_t__ XtAppAddTimeOut (int ,scalar_t__,int ,int *) ;
 int XtRemoveTimeOut (scalar_t__) ;
 int app_context ;
 scalar_t__ blink_offtime ;
 scalar_t__ blink_ontime ;
 int blink_state ;
 scalar_t__ blink_timer ;
 scalar_t__ blink_waittime ;
 TYPE_1__ gui ;
 int gui_update_cursor (int ,int ) ;
 int gui_x11_blink_cb ;

void
gui_mch_start_blink()
{
    if (blink_timer != (XtIntervalId)0)
 XtRemoveTimeOut(blink_timer);

    if (blink_waittime && blink_ontime && blink_offtime && gui.in_focus)
    {
 blink_timer = XtAppAddTimeOut(app_context, blink_waittime,
            gui_x11_blink_cb, ((void*)0));
 blink_state = BLINK_ON;
 gui_update_cursor(TRUE, FALSE);
    }
}
