
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int gui_update_cursor (int ,int ) ;

void
gui_mch_start_blink(void)
{
    gui_update_cursor(TRUE, FALSE);
}
