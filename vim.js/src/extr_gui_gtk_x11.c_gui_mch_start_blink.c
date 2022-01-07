
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guint32 ;
struct TYPE_2__ {scalar_t__ in_focus; } ;
typedef int GtkFunction ;


 int BLINK_ON ;
 int FALSE ;
 int TRUE ;
 scalar_t__ blink_cb ;
 scalar_t__ blink_offtime ;
 scalar_t__ blink_ontime ;
 int blink_state ;
 scalar_t__ blink_timer ;
 scalar_t__ blink_waittime ;
 scalar_t__ gtk_timeout_add (int ,int ,int *) ;
 int gtk_timeout_remove (scalar_t__) ;
 TYPE_1__ gui ;
 int gui_update_cursor (int ,int ) ;

void
gui_mch_start_blink(void)
{
    if (blink_timer)
 gtk_timeout_remove(blink_timer);

    if (blink_waittime && blink_ontime && blink_offtime && gui.in_focus)
    {
 blink_timer = gtk_timeout_add((guint32)blink_waittime,
       (GtkFunction) blink_cb, ((void*)0));
 blink_state = BLINK_ON;
 gui_update_cursor(TRUE, FALSE);
    }
}
