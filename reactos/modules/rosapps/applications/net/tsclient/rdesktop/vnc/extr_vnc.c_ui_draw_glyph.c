
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vncBuffer ;
typedef int HGLYPH ;




 int server ;
 int unimpl (char*,int) ;
 int vncCopyBlitFrom (int ,int,int,int,int,int *,int,int) ;
 int vncDeleteBuffer (int *) ;
 int * vncDupBuffer (int ) ;
 scalar_t__ vncGetPixel (int *,int,int) ;
 int vncSetPixel (int *,int,int,int) ;
 int vncTransBlitFrom (int ,int,int,int,int,int *,int,int,int) ;
 int vncwinClipRect (int*,int*,int*,int*) ;

void
ui_draw_glyph(int mixmode,
                  int x, int y, int cx, int cy,
                 HGLYPH glyph, int srcx, int srcy,
                     int bgcolour, int fgcolour)
{
 int xx, yy;
 int ox, oy;
 vncBuffer *buf = vncDupBuffer(glyph);

 x &= 0xffff;
 y &= 0xffff;



 if (mixmode == 128 && fgcolour == bgcolour)
  bgcolour = fgcolour ^ 0xff;

 ox = x;
 oy = y;

 for (yy = srcy; yy < srcy + cy; yy++)
 {
  for (xx = srcx; xx < srcx + cx; xx++)
  {
   vncSetPixel(buf, xx, yy, vncGetPixel(buf, xx, yy) ? fgcolour : bgcolour);
  }
 }

 switch (mixmode)
 {
  case 128:
   if (vncwinClipRect(&x, &y, &cx, &cy))
   {

    srcx += x - ox;
    srcy += y - oy;
    vncTransBlitFrom(server, x, y, cx, cy, buf, srcx, srcy, bgcolour);
   }
   break;
  case 129:
   if (vncwinClipRect(&x, &y, &cx, &cy))
   {

    srcx += x - ox;
    srcy += y - oy;
    vncCopyBlitFrom(server, x, y, cx, cy, buf, srcx, srcy);
   }
   break;

  default:
   unimpl("mix %d\n", mixmode);
 }
 vncDeleteBuffer(buf);
}
