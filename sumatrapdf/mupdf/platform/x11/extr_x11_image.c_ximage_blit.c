
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bytes_per_line; scalar_t__ data; } ;
typedef TYPE_1__ XImage ;
struct TYPE_7__ {int display; scalar_t__ useshm; int (* convert_func ) (unsigned char*,int,unsigned char*,int ,int,int) ;} ;
typedef int GC ;
typedef int Drawable ;


 int False ;
 scalar_t__ HEIGHT ;
 scalar_t__ WIDTH ;
 int XPutImage (int ,int ,int ,TYPE_1__*,int ,int ,int,int,int,int) ;
 int XShmPutImage (int ,int ,int ,TYPE_1__*,int ,int ,int,int,int,int,int ) ;
 int fz_mini (int,scalar_t__) ;
 TYPE_3__ info ;
 TYPE_1__* next_pool_image () ;
 int stub1 (unsigned char*,int,unsigned char*,int ,int,int) ;

void
ximage_blit(Drawable d, GC gc,
 int dstx, int dsty,
 unsigned char *srcdata,
 int srcx, int srcy,
 int srcw, int srch,
 int srcstride)
{
 XImage *image;
 int ax, ay;
 int w, h;
 unsigned char *srcptr;

 for (ay = 0; ay < srch; ay += HEIGHT)
 {
  h = fz_mini(srch - ay, HEIGHT);
  for (ax = 0; ax < srcw; ax += WIDTH)
  {
   w = fz_mini(srcw - ax, WIDTH);

   image = next_pool_image();

   srcptr = srcdata +
   (ay + srcy) * srcstride +
   (ax + srcx) * 4;

   info.convert_func(srcptr, srcstride,
    (unsigned char *) image->data,
    image->bytes_per_line, w, h);

   if (info.useshm)
   {
    XShmPutImage(info.display, d, gc, image,
     0, 0, dstx + ax, dsty + ay,
     w, h, False);
   }
   else
   {
    XPutImage(info.display, d, gc, image,
     0, 0,
     dstx + ax,
     dsty + ay,
     w, h);
   }
  }
 }
}
