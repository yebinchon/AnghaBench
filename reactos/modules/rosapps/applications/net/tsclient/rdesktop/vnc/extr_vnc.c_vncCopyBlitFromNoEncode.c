
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vncPixel ;
struct TYPE_10__ {int w; int h; int linew; int * data; TYPE_2__* format; } ;
typedef TYPE_3__ vncBuffer ;
typedef int uint8_t ;
typedef TYPE_4__* rfbScreenInfoPtr ;
struct TYPE_8__ {scalar_t__ bitsPerPixel; } ;
struct TYPE_11__ {int paddedWidthInBytes; int * frameBuffer; TYPE_1__ serverFormat; } ;
struct TYPE_9__ {scalar_t__ bitsPerPixel; } ;


 int GETPIXEL (TYPE_3__*,int,int) ;
 int SETPIXEL (int ,int,int,int ) ;
 int frameBuffer ;
 int memcpy (int *,int *,int) ;
 int vncHideCursor () ;

void
vncCopyBlitFromNoEncode(rfbScreenInfoPtr s, int x, int y, int w, int h,
   vncBuffer * src, int srcx, int srcy)
{
 int xx, yy;

 vncHideCursor();

 if (s->serverFormat.bitsPerPixel == src->format->bitsPerPixel
     && srcx + w <= src->w && srcy + h <= src->h)
 {

  uint8_t *srcdata, *dstdata;
  srcdata = src->data + (srcy * src->linew + srcx);
  dstdata = s->frameBuffer + (y * s->paddedWidthInBytes + x);
  for (yy = 0; yy < h; yy++)
  {
   memcpy(dstdata, srcdata, w);
   dstdata += s->paddedWidthInBytes;
   srcdata += src->linew;
  }
 }
 else
 {

  for (yy = y; yy < y + h; yy++)
  {
   int ysrc = srcy + yy - y;
   while (ysrc >= src->h)
    ysrc -= src->h;
   for (xx = x; xx < x + w; xx++)
   {
    vncPixel p;
    int xsrc = srcx + xx - x;
    while (xsrc >= src->linew)
     xsrc -= src->linew;
    p = GETPIXEL(src, xsrc, ysrc);
    SETPIXEL(frameBuffer, xx, yy, p);
   }
  }
 }
}
