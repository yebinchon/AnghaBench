
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int wnd; } ;
struct TYPE_7__ {int seamless_active; TYPE_5__* seamless_windows; scalar_t__ seamless_hidden; int seamless_started; } ;
struct TYPE_8__ {TYPE_1__ xwin; int wnd; int display; int seamless_rdp; } ;
typedef TYPE_2__ RDPCLIENT ;


 int XDestroyWindow (int ,int ) ;
 int XMapWindow (int ,int ) ;
 int XUnmapWindow (int ,int ) ;
 int seamless_send_sync (TYPE_2__*) ;
 int sw_remove_window (TYPE_2__*,TYPE_5__*) ;

void
ui_seamless_toggle(RDPCLIENT * This)
{
 if (!This->seamless_rdp)
  return;

 if (!This->xwin.seamless_started)
  return;

 if (This->xwin.seamless_hidden)
  return;

 if (This->xwin.seamless_active)
 {

  while (This->xwin.seamless_windows)
  {
   XDestroyWindow(This->display, This->xwin.seamless_windows->wnd);
   sw_remove_window(This, This->xwin.seamless_windows);
  }
  XMapWindow(This->display, This->wnd);
 }
 else
 {

  XUnmapWindow(This->display, This->wnd);
  seamless_send_sync(This);
 }

 This->xwin.seamless_active = !This->xwin.seamless_active;
}
