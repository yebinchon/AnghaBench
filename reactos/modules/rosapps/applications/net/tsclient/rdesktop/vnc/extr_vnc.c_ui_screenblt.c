
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int server ;
 int vncCopyBlit (int ,int,int,int,int,int,int) ;
 scalar_t__ vncwinClipRect (int*,int*,int*,int*) ;

void
ui_screenblt(uint8 opcode,
                 int x, int y, int cx, int cy,
                int srcx, int srcy)
{
 int ox, oy;

 ox = x;
 oy = y;
 if (vncwinClipRect(&x, &y, &cx, &cy))
 {

  srcx += x - ox;
  srcy += y - oy;
  vncCopyBlit(server, x, y, cx, cy, srcx, srcy);
 }
}
