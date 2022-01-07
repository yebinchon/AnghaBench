
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vncBuffer ;
typedef int uint8 ;
typedef scalar_t__ HBITMAP ;





 int ROP2_S (int ) ;

 int server ;
 int unimpl (char*,int ,int,int,int,int) ;
 int vncAndBlitFrom (int ,int,int,int,int,int *,int,int) ;
 int vncCopyBlitFrom (int ,int,int,int,int,int *,int,int) ;
 int vncTransBlitFrom (int ,int,int,int,int,int *,int,int,int) ;
 int vncXorBlitFrom (int ,int,int,int,int,int *,int,int) ;
 scalar_t__ vncwinClipRect (int*,int*,int*,int*) ;

void
ui_memblt(uint8 opcode,
              int x, int y, int cx, int cy,
             HBITMAP src, int srcx, int srcy)
{
 int ox, oy;
 ox = x;
 oy = y;

 if (vncwinClipRect(&x, &y, &cx, &cy))
 {

  srcx += x - ox;
  srcy += y - oy;
  switch (ROP2_S(opcode))
  {
   case 129:
    vncTransBlitFrom(server, x, y, cx, cy, (vncBuffer *) src, srcx,
       srcy, 0x0);
    break;
   case 128:
    vncXorBlitFrom(server, x, y, cx, cy, (vncBuffer *) src, srcx, srcy);
    break;
   case 131:
    vncAndBlitFrom(server, x, y, cx, cy, (vncBuffer *) src, srcx, srcy);
    break;
   case 130:
    vncCopyBlitFrom(server, x, y, cx, cy, (vncBuffer *) src, srcx,
      srcy);
    break;
   default:
    unimpl("ui_memblt: op%d %d,%d %dx%d\n", opcode, x, y, cx, cy);
    vncCopyBlitFrom(server, x, y, cx, cy, (vncBuffer *) src, srcx,
      srcy);
    break;
  }
 }
}
