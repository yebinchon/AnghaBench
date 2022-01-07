
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vncPixel ;
struct TYPE_6__ {int h; int linew; } ;
typedef TYPE_1__ vncBuffer ;
typedef int rfbScreenInfoPtr ;


 int GETPIXEL (TYPE_1__*,int,int) ;
 int SETPIXEL (TYPE_1__*,int,int,int) ;
 TYPE_1__* frameBuffer ;
 int rfbMarkRectAsModified (int ,int,int,int,int) ;
 int vncHideCursor () ;

void
vncXorBlitFrom(rfbScreenInfoPtr s, int x, int y, int w, int h, vncBuffer * src, int srcx, int srcy)
{
 int xx, yy;

 vncHideCursor();


 for (yy = y; yy < y + h; yy++)
 {
  int ysrc = srcy + yy - y;
  while (ysrc >= src->h)
   ysrc -= src->h;
  for (xx = x; xx < x + w; xx++)
  {
   vncPixel p, pp;
   int xsrc = srcx + xx - x;
   while (xsrc >= src->linew)
    xsrc -= src->linew;
   p = GETPIXEL(src, xsrc, ysrc);
   pp = GETPIXEL(frameBuffer, xx, yy);

   SETPIXEL(frameBuffer, xx, yy, p ^ pp);
  }
 }

 rfbMarkRectAsModified(s, x, y, x + w, y + h);
}
