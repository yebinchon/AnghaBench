
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int wnd; } ;
struct TYPE_8__ {int gc; int backstore; int mod_map; int * null_cursor; int * IM; TYPE_7__* seamless_windows; } ;
struct TYPE_9__ {int * display; TYPE_1__ xwin; scalar_t__ ownbackstore; } ;
typedef TYPE_2__ RDPCLIENT ;


 int XCloseDisplay (int *) ;
 int XCloseIM (int *) ;
 int XDestroyWindow (int *,int ) ;
 int XFreeGC (int *,int ) ;
 int XFreeModifiermap (int ) ;
 int XFreePixmap (int *,int ) ;
 int sw_remove_window (TYPE_2__*,TYPE_7__*) ;
 int ui_destroy_cursor (TYPE_2__*,int *) ;
 int xclip_deinit (TYPE_2__*) ;

void
ui_deinit(RDPCLIENT * This)
{
 while (This->xwin.seamless_windows)
 {
  XDestroyWindow(This->display, This->xwin.seamless_windows->wnd);
  sw_remove_window(This, This->xwin.seamless_windows);
 }

 xclip_deinit(This);

 if (This->xwin.IM != ((void*)0))
  XCloseIM(This->xwin.IM);

 if (This->xwin.null_cursor != ((void*)0))
  ui_destroy_cursor(This, This->xwin.null_cursor);

 XFreeModifiermap(This->xwin.mod_map);

 if (This->ownbackstore)
  XFreePixmap(This->display, This->xwin.backstore);

 XFreeGC(This->display, This->xwin.gc);
 XCloseDisplay(This->display);
 This->display = ((void*)0);
}
