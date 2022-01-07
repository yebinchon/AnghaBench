
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int XImage ;
struct TYPE_5__ {int bpp; int create_bitmap_gc; int depth; int visual; } ;
struct TYPE_6__ {int server_depth; TYPE_1__ xwin; int display; int wnd; scalar_t__ owncolmap; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int Pixmap ;
typedef int HBITMAP ;


 int * XCreateImage (int ,int ,int ,int ,int ,char*,int,int,int,int ) ;
 int XCreatePixmap (int ,int ,int,int,int ) ;
 int XFree (int *) ;
 int XPutImage (int ,int ,int ,int *,int ,int ,int ,int ,int,int) ;
 int ZPixmap ;
 int * translate_image (TYPE_2__*,int,int,int *) ;
 int xfree (int *) ;

HBITMAP
ui_create_bitmap(RDPCLIENT * This, int width, int height, uint8 * data)
{
 XImage *image;
 Pixmap bitmap;
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
 bitmap = XCreatePixmap(This->display, This->wnd, width, height, This->xwin.depth);
 image = XCreateImage(This->display, This->xwin.visual, This->xwin.depth, ZPixmap, 0,
        (char *) tdata, width, height, bitmap_pad, 0);

 XPutImage(This->display, bitmap, This->xwin.create_bitmap_gc, image, 0, 0, 0, 0, width, height);

 XFree(image);
 if (tdata != data)
  xfree(tdata);
 return (HBITMAP) bitmap;
}
