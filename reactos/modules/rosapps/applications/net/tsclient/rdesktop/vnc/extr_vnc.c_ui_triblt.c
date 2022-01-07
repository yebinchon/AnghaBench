
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int HBITMAP ;
typedef int BRUSH ;


 int ROP2_AND ;
 int ROP2_COPY ;
 int ROP2_NXOR ;
 int ROP2_XOR ;
 int ui_memblt (int ,int,int,int,int,int ,int,int) ;
 int ui_patblt (int ,int,int,int,int,int *,int,int) ;
 int unimpl (char*,int) ;

void
ui_triblt(uint8 opcode,
              int x, int y, int cx, int cy,
             HBITMAP src, int srcx, int srcy,
               BRUSH * brush, int bgcolour, int fgcolour)
{



 switch (opcode)
 {
  case 0x69:
   ui_memblt(ROP2_XOR, x, y, cx, cy, src, srcx, srcy);
   ui_patblt(ROP2_NXOR, x, y, cx, cy, brush, bgcolour, fgcolour);
   break;

  case 0xb8:
   ui_patblt(ROP2_XOR, x, y, cx, cy, brush, bgcolour, fgcolour);
   ui_memblt(ROP2_AND, x, y, cx, cy, src, srcx, srcy);
   ui_patblt(ROP2_XOR, x, y, cx, cy, brush, bgcolour, fgcolour);
   break;

  default:
   unimpl("ui_triblt 1x%x\n", opcode);
   ui_memblt(ROP2_COPY, x, y, cx, cy, src, srcx, srcy);
 }

}
