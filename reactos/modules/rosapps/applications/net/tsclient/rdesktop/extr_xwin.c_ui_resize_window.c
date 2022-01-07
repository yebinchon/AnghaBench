
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; int max_height; int min_height; int max_width; int min_width; } ;
typedef TYPE_2__ XSizeHints ;
struct TYPE_8__ {int backstore; int gc; int screen; int depth; } ;
struct TYPE_10__ {TYPE_1__ xwin; int display; int height; int width; int wnd; scalar_t__ embed_wnd; scalar_t__ fullscreen; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef int Pixmap ;


 int BlackPixelOfScreen (int ) ;
 int PMaxSize ;
 int PMinSize ;
 TYPE_2__* XAllocSizeHints () ;
 int XCopyArea (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int XCreatePixmap (int ,int ,int ,int ,int ) ;
 int XFillRectangle (int ,int ,int ,int ,int ,int ,int ) ;
 int XFree (TYPE_2__*) ;
 int XFreePixmap (int ,int ) ;
 int XResizeWindow (int ,int ,int ,int ) ;
 int XSetForeground (int ,int ,int ) ;
 int XSetWMNormalHints (int ,int ,TYPE_2__*) ;

void
ui_resize_window(RDPCLIENT * This)
{
 XSizeHints *sizehints;
 Pixmap bs;

 sizehints = XAllocSizeHints();
 if (sizehints)
 {
  sizehints->flags = PMinSize | PMaxSize;
  sizehints->min_width = sizehints->max_width = This->width;
  sizehints->min_height = sizehints->max_height = This->height;
  XSetWMNormalHints(This->display, This->wnd, sizehints);
  XFree(sizehints);
 }

 if (!(This->fullscreen || This->embed_wnd))
 {
  XResizeWindow(This->display, This->wnd, This->width, This->height);
 }


 if (This->xwin.backstore != 0)
 {
  bs = XCreatePixmap(This->display, This->wnd, This->width, This->height, This->xwin.depth);
  XSetForeground(This->display, This->xwin.gc, BlackPixelOfScreen(This->xwin.screen));
  XFillRectangle(This->display, bs, This->xwin.gc, 0, 0, This->width, This->height);
  XCopyArea(This->display, This->xwin.backstore, bs, This->xwin.gc, 0, 0, This->width, This->height, 0, 0);
  XFreePixmap(This->display, This->xwin.backstore);
  This->xwin.backstore = bs;
 }
}
