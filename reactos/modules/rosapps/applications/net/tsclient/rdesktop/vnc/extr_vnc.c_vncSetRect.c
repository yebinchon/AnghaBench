
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vncPixel ;
typedef int uint8_t ;
typedef TYPE_2__* rfbScreenInfoPtr ;
struct TYPE_5__ {int bitsPerPixel; } ;
struct TYPE_6__ {int width; int height; int paddedWidthInBytes; int * frameBuffer; TYPE_1__ serverFormat; } ;


 int SETPIXEL (int ,int,int,int ) ;
 int frameBuffer ;
 int memset (int *,int ,int) ;
 int rfbMarkRectAsModified (TYPE_2__*,int,int,int,int) ;
 int vncHideCursor () ;

void
vncSetRect(rfbScreenInfoPtr s, int x, int y, int w, int h, vncPixel c)
{
 int xx, yy;

 if (x + w > s->width)
  w = s->width - x;
 if (y + h > s->height)
  h = s->height - y;
 if (w <= 0 || h <= 0)
  return;

 vncHideCursor();


 if (s->serverFormat.bitsPerPixel == 8)
 {

  uint8_t *dstdata;
  dstdata = s->frameBuffer + (y * s->paddedWidthInBytes + x);
  for (yy = 0; yy < h; yy++)
  {
   memset(dstdata, c, w);
   dstdata += s->paddedWidthInBytes;
  }
 }
 else
 {
  for (yy = y; yy < y + h; yy++)
  {
   for (xx = x; xx < x + w; xx++)
   {
    SETPIXEL(frameBuffer, xx, yy, c);
   }
  }
 }

 rfbMarkRectAsModified(s, x, y, x + w, y + h);
}
