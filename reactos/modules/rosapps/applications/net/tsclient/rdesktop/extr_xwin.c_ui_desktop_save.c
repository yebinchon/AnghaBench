
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_9__ {scalar_t__ data; int bytes_per_line; } ;
typedef TYPE_2__ XImage ;
struct TYPE_8__ {int bpp; int gc; int depth; int backstore; } ;
struct TYPE_10__ {TYPE_1__ xwin; int display; int wnd; scalar_t__ ownbackstore; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef int Pixmap ;


 int AllPlanes ;
 int XCopyArea (int ,int ,int ,int ,int,int,int,int,int ,int ) ;
 int XCreatePixmap (int ,int ,int,int,int ) ;
 int XDestroyImage (TYPE_2__*) ;
 int XFreePixmap (int ,int ) ;
 TYPE_2__* XGetImage (int ,int ,int,int,int,int,int ,int ) ;
 int ZPixmap ;
 int cache_put_desktop (TYPE_3__*,int,int,int,int ,int,int *) ;

void
ui_desktop_save(RDPCLIENT * This, uint32 offset, int x, int y, int cx, int cy)
{
 Pixmap pix;
 XImage *image;

 if (This->ownbackstore)
 {
  image = XGetImage(This->display, This->xwin.backstore, x, y, cx, cy, AllPlanes, ZPixmap);
 }
 else
 {
  pix = XCreatePixmap(This->display, This->wnd, cx, cy, This->xwin.depth);
  XCopyArea(This->display, This->wnd, pix, This->xwin.gc, x, y, cx, cy, 0, 0);
  image = XGetImage(This->display, pix, 0, 0, cx, cy, AllPlanes, ZPixmap);
  XFreePixmap(This->display, pix);
 }

 offset *= This->xwin.bpp / 8;
 cache_put_desktop(This, offset, cx, cy, image->bytes_per_line, This->xwin.bpp / 8, (uint8 *) image->data);

 XDestroyImage(image);
}
