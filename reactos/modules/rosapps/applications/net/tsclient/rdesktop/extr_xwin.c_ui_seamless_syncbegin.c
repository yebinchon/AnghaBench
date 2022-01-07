
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int wnd; } ;
struct TYPE_6__ {TYPE_5__* seamless_windows; int seamless_active; } ;
struct TYPE_7__ {TYPE_1__ xwin; int display; } ;
typedef TYPE_2__ RDPCLIENT ;


 int XDestroyWindow (int ,int ) ;
 int sw_remove_window (TYPE_2__*,TYPE_5__*) ;

void
ui_seamless_syncbegin(RDPCLIENT * This, unsigned long flags)
{
 if (!This->xwin.seamless_active)
  return;


 while (This->xwin.seamless_windows)
 {
  XDestroyWindow(This->display, This->xwin.seamless_windows->wnd);
  sw_remove_window(This, This->xwin.seamless_windows);
 }
}
