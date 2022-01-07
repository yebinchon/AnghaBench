
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int wnd; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_8__ {int seamless_active; } ;
struct TYPE_10__ {int display; TYPE_1__ xwin; } ;
typedef TYPE_3__ RDPCLIENT ;


 int XStoreName (int ,int ,char const*) ;
 int ewmh_set_wm_name (TYPE_3__*,int ,char const*) ;
 TYPE_2__* sw_get_window_by_id (TYPE_3__*,unsigned long) ;
 int warning (char*,unsigned long) ;

void
ui_seamless_settitle(RDPCLIENT * This, unsigned long id, const char *title, unsigned long flags)
{
 seamless_window *sw;

 if (!This->xwin.seamless_active)
  return;

 sw = sw_get_window_by_id(This, id);
 if (!sw)
 {
  warning("ui_seamless_settitle: No information for window 0x%lx\n", id);
  return;
 }


 XStoreName(This->display, sw->wnd, title);
 ewmh_set_wm_name(This, sw->wnd, title);
}
