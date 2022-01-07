
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int wnd; } ;
typedef TYPE_2__ seamless_window ;
typedef int Window ;
struct TYPE_9__ {int seamless_active; } ;
struct TYPE_11__ {int display; TYPE_1__ xwin; } ;
typedef TYPE_3__ RDPCLIENT ;


 int XRaiseWindow (int ,int ) ;
 int XRestackWindows (int ,int *,int) ;
 TYPE_2__* sw_get_window_by_id (TYPE_3__*,unsigned long) ;
 int sw_restack_window (TYPE_3__*,TYPE_2__*,unsigned long) ;
 int warning (char*,unsigned long) ;

void
ui_seamless_restack_window(RDPCLIENT * This, unsigned long id, unsigned long behind, unsigned long flags)
{
 seamless_window *sw;

 if (!This->xwin.seamless_active)
  return;

 sw = sw_get_window_by_id(This, id);
 if (!sw)
 {
  warning("ui_seamless_restack_window: No information for window 0x%lx\n", id);
  return;
 }

 if (behind)
 {
  seamless_window *sw_behind;
  Window wnds[2];

  sw_behind = sw_get_window_by_id(This, behind);
  if (!sw_behind)
  {
   warning("ui_seamless_restack_window: No information for window 0x%lx\n",
    behind);
   return;
  }

  wnds[1] = sw_behind->wnd;
  wnds[0] = sw->wnd;

  XRestackWindows(This->display, wnds, 2);
 }
 else
 {
  XRaiseWindow(This->display, sw->wnd);
 }

 sw_restack_window(This, sw, behind);
}
