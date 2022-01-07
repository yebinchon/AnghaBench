
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int XImage ;
struct TYPE_8__ {scalar_t__ yoffset; scalar_t__ xoffset; int wnd; } ;
struct TYPE_6__ {int bpp; int gc; int backstore; int depth; int visual; } ;
struct TYPE_7__ {TYPE_1__ xwin; int wnd; int display; scalar_t__ ownbackstore; } ;
typedef TYPE_2__ RDPCLIENT ;


 int BitmapPad (int ) ;
 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,int ,int ,int,int,int,int,int,int),int ) ;
 int XCopyArea (int ,int ,int ,int ,int,int,int,int,int,int) ;
 int * XCreateImage (int ,int ,int ,int ,int ,char*,int,int,int ,int) ;
 int XFree (int *) ;
 int XPutImage (int ,int ,int ,int *,int ,int ,int,int,int,int) ;
 int ZPixmap ;
 int * cache_get_desktop (TYPE_2__*,int,int,int,int) ;
 TYPE_4__* sw ;

void
ui_desktop_restore(RDPCLIENT * This, uint32 offset, int x, int y, int cx, int cy)
{
 XImage *image;
 uint8 *data;

 offset *= This->xwin.bpp / 8;
 data = cache_get_desktop(This, offset, cx, cy, This->xwin.bpp / 8);
 if (data == ((void*)0))
  return;

 image = XCreateImage(This->display, This->xwin.visual, This->xwin.depth, ZPixmap, 0,
        (char *) data, cx, cy, BitmapPad(This->display), cx * This->xwin.bpp / 8);

 if (This->ownbackstore)
 {
  XPutImage(This->display, This->xwin.backstore, This->xwin.gc, image, 0, 0, x, y, cx, cy);
  XCopyArea(This->display, This->xwin.backstore, This->wnd, This->xwin.gc, x, y, cx, cy, x, y);
  ON_ALL_SEAMLESS_WINDOWS(XCopyArea,
     (This->display, This->xwin.backstore, sw->wnd, This->xwin.gc,
      x, y, cx, cy, x - sw->xoffset, y - sw->yoffset));
 }
 else
 {
  XPutImage(This->display, This->wnd, This->xwin.gc, image, 0, 0, x, y, cx, cy);
  ON_ALL_SEAMLESS_WINDOWS(XCopyArea,
     (This->display, This->wnd, sw->wnd, This->xwin.gc, x, y, cx, cy,
      x - sw->xoffset, y - sw->yoffset));
 }

 XFree(image);
}
