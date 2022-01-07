
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vncBuffer ;
typedef int uint8 ;
struct TYPE_3__ {int style; int pattern; } ;
typedef int HGLYPH ;
typedef TYPE_1__ BRUSH ;




 int server ;
 scalar_t__ ui_create_glyph (int,int,int ) ;
 int ui_destroy_glyph (int ) ;
 int unimpl (char*,int,...) ;
 int vncCopyBlitFrom (int ,int,int,int,int,int *,int ,int ) ;
 int vncGetPixel (int *,int,int) ;
 int * vncNewBuffer (int,int,int) ;
 int vncSetPixel (int *,int,int,int) ;
 int vncSetRect (int ,int,int,int,int,int) ;
 int vncXorBlitFrom (int ,int,int,int,int,int *,int ,int ) ;
 int vncwinClipRect (int*,int*,int*,int*) ;

void
ui_patblt(uint8 opcode,
              int x, int y, int cx, int cy,
               BRUSH * brush, int bgcolour, int fgcolour)
{
 switch (brush->style)
 {
  case 0:
   switch (opcode)
   {
    case 128:
     {
      int xx, yy;
      vncBuffer *fill = vncNewBuffer(cx, cy, 8);
      for (yy = 0; yy < cy; yy++)
       for (xx = 0; xx < cx; xx++)
        vncSetPixel(fill, xx, yy, fgcolour);
      if (vncwinClipRect(&x, &y, &cx, &cy))
       vncXorBlitFrom(server, x, y, cx, cy, fill,
               0, 0);
      break;
     }

    default:
     if (vncwinClipRect(&x, &y, &cx, &cy))
      vncSetRect(server, x, y, cx, cy, fgcolour);
   }
   break;

  case 3:
   {
    int xx, yy;
    vncBuffer *fill;
    fill = (vncBuffer *) ui_create_glyph(8, 8, brush->pattern);

    for (yy = 0; yy < 8; yy++)
    {
     for (xx = 0; xx < 8; xx++)
     {
      vncSetPixel(fill, xx, yy,
           vncGetPixel(fill, xx,
         yy) ? fgcolour : bgcolour);
     }
    }

    if (vncwinClipRect(&x, &y, &cx, &cy))
    {
     switch (opcode)
     {
      case 129:
       vncCopyBlitFrom(server, x, y, cx, cy, fill,
         0, 0);
       break;
      case 128:
       vncXorBlitFrom(server, x, y, cx, cy, fill,
               0, 0);
       break;
      default:
       unimpl("pattern blit (%d,%d) opcode=%d bg=%d fg=%d\n", x, y, opcode, bgcolour, fgcolour);
       vncCopyBlitFrom(server, x, y, cx, cy, fill,
         0, 0);
       break;
     }
    }

    ui_destroy_glyph((HGLYPH) fill);
    break;

   }
  default:
   unimpl("brush %d\n", brush->style);
 }
}
