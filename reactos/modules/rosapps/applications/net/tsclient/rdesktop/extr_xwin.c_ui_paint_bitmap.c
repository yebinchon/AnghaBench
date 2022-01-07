
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int XImage ;
struct TYPE_8__ {scalar_t__ yoffset; scalar_t__ xoffset; int wnd; } ;
struct TYPE_6__ {int bpp; int gc; int backstore; int depth; int visual; } ;
struct TYPE_7__ {int server_depth; TYPE_1__ xwin; int wnd; int display; scalar_t__ ownbackstore; scalar_t__ owncolmap; } ;
typedef TYPE_2__ RDPCLIENT ;


 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,int ,int ,int,int,int,int,int,int),int ) ;
 int XCopyArea (int ,int ,int ,int ,int,int,int,int,int,int) ;
 int * XCreateImage (int ,int ,int ,int ,int ,char*,int,int,int,int ) ;
 int XFree (int *) ;
 int XPutImage (int ,int ,int ,int *,int ,int ,int,int,int,int) ;
 int ZPixmap ;
 TYPE_5__* sw ;
 int * translate_image (TYPE_2__*,int,int,int *) ;
 int xfree (int *) ;

void
ui_paint_bitmap(RDPCLIENT * This, int x, int y, int cx, int cy, int width, int height, uint8 * data)
{
 XImage *image;
 uint8 *tdata;
 int bitmap_pad;

 if (This->server_depth == 8)
 {
  bitmap_pad = 8;
 }
 else
 {
  bitmap_pad = This->xwin.bpp;

  if (This->xwin.bpp == 24)
   bitmap_pad = 32;
 }

 tdata = (This->owncolmap ? data : translate_image(This, width, height, data));
 image = XCreateImage(This->display, This->xwin.visual, This->xwin.depth, ZPixmap, 0,
        (char *) tdata, width, height, bitmap_pad, 0);

 if (This->ownbackstore)
 {
  XPutImage(This->display, This->xwin.backstore, This->xwin.gc, image, 0, 0, x, y, cx, cy);
  XCopyArea(This->display, This->xwin.backstore, This->wnd, This->xwin.gc, x, y, cx, cy, x, y);
  ON_ALL_SEAMLESS_WINDOWS(XCopyArea,
     (This->display, This->xwin.backstore, sw->wnd, This->xwin.gc, x, y, cx, cy,
      x - sw->xoffset, y - sw->yoffset));
 }
 else
 {
  XPutImage(This->display, This->wnd, This->xwin.gc, image, 0, 0, x, y, cx, cy);
  ON_ALL_SEAMLESS_WINDOWS(XCopyArea,
     (This->display, This->wnd, sw->wnd, This->xwin.gc, x, y, cx, cy,
      x - sw->xoffset, y - sw->yoffset));
 }

 XFree(image);
 if (tdata != data)
  xfree(tdata);
}
