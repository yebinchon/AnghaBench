
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_10__ {void* bitmap_bit_order; void* byte_order; } ;
typedef TYPE_2__ XImage ;
struct TYPE_9__ {int create_glyph_gc; int visual; } ;
struct TYPE_11__ {TYPE_1__ xwin; int display; int wnd; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef int Pixmap ;
typedef int HGLYPH ;


 void* MSBFirst ;
 int XCreateGC (int ,int ,int ,int *) ;
 TYPE_2__* XCreateImage (int ,int ,int,int ,int ,char*,int,int,int,int) ;
 int XCreatePixmap (int ,int ,int,int,int) ;
 int XFree (TYPE_2__*) ;
 int XInitImage (TYPE_2__*) ;
 int XPutImage (int ,int ,int ,TYPE_2__*,int ,int ,int ,int ,int,int) ;
 int ZPixmap ;

HGLYPH
ui_create_glyph(RDPCLIENT * This, int width, int height, const uint8 * data)
{
 XImage *image;
 Pixmap bitmap;
 int scanline;

 scanline = (width + 7) / 8;

 bitmap = XCreatePixmap(This->display, This->wnd, width, height, 1);
 if (This->xwin.create_glyph_gc == 0)
  This->xwin.create_glyph_gc = XCreateGC(This->display, bitmap, 0, ((void*)0));

 image = XCreateImage(This->display, This->xwin.visual, 1, ZPixmap, 0, (char *) data,
        width, height, 8, scanline);
 image->byte_order = MSBFirst;
 image->bitmap_bit_order = MSBFirst;
 XInitImage(image);

 XPutImage(This->display, bitmap, This->xwin.create_glyph_gc, image, 0, 0, 0, 0, width, height);

 XFree(image);
 return (HGLYPH) bitmap;
}
