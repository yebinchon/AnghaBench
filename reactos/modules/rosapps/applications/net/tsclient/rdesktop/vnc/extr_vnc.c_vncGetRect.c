
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_2__ vncBuffer ;
typedef TYPE_3__* rfbScreenInfoPtr ;
struct TYPE_8__ {int bitsPerPixel; int depth; } ;
struct TYPE_10__ {int paddedWidthInBytes; char* frameBuffer; TYPE_1__ serverFormat; } ;


 int GETPIXEL (int ,int,int) ;
 int SETPIXEL (TYPE_2__*,int,int,int ) ;
 int frameBuffer ;
 int memcpy (char*,char*,int) ;
 int vncHideCursor () ;
 TYPE_2__* vncNewBuffer (int,int,int ) ;

vncBuffer *
vncGetRect(rfbScreenInfoPtr s, int x, int y, int w, int h)
{
 int xx, yy;
 vncBuffer *b = vncNewBuffer(w, h, s->serverFormat.depth);

 vncHideCursor();

 if (s->serverFormat.bitsPerPixel == 8)
 {

  int srcstep, dststep;
  char *srcdata, *dstdata;
  srcstep = s->paddedWidthInBytes * s->serverFormat.bitsPerPixel / 8;
  dststep = w * s->serverFormat.bitsPerPixel / 8;
  dstdata = b->data;
  srcdata = s->frameBuffer + (y * srcstep + x * s->serverFormat.bitsPerPixel / 8);
  for (yy = 0; yy < h; yy++)
  {
   memcpy(dstdata, srcdata, dststep);
   dstdata += dststep;
   srcdata += srcstep;
  }
 }
 else
 {
  for (yy = y; yy < y + h; yy++)
  {
   for (xx = x; xx < x + w; xx++)
   {
    SETPIXEL(b, xx - x, yy - y, GETPIXEL(frameBuffer, xx, yy));
   }
  }
 }

 return b;
}
