
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int wnd; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_9__ {int seamless_active; } ;
struct TYPE_11__ {int display; TYPE_1__ xwin; } ;
typedef TYPE_3__ RDPCLIENT ;


 int XDestroyWindow (int ,int ) ;
 TYPE_2__* sw_get_window_by_id (TYPE_3__*,unsigned long) ;
 int sw_remove_window (TYPE_3__*,TYPE_2__*) ;
 int warning (char*,unsigned long) ;

void
ui_seamless_destroy_window(RDPCLIENT * This, unsigned long id, unsigned long flags)
{
 seamless_window *sw;

 if (!This->xwin.seamless_active)
  return;

 sw = sw_get_window_by_id(This, id);
 if (!sw)
 {
  warning("ui_seamless_destroy_window: No information for window 0x%lx\n", id);
  return;
 }

 XDestroyWindow(This->display, sw->wnd);
 sw_remove_window(This, sw);
}
