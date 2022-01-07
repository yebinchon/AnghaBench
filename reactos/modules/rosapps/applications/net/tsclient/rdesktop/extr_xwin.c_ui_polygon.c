
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef int XPoint ;
struct TYPE_10__ {int style; int* pattern; int yorigin; int xorigin; } ;
struct TYPE_8__ {int gc; } ;
struct TYPE_9__ {TYPE_1__ xwin; int display; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int Pixmap ;
typedef int POINT ;
typedef int HGLYPH ;
typedef TYPE_3__ BRUSH ;



 int EvenOddRule ;
 int FILL_POLYGON (int *,int) ;
 int FillOpaqueStippled ;
 int FillSolid ;
 int RESET_FUNCTION (int) ;
 int SET_BACKGROUND (int) ;
 int SET_FOREGROUND (int) ;
 int SET_FUNCTION (int) ;

 int WindingRule ;
 int XSetFillRule (int ,int ,int ) ;
 int XSetFillStyle (int ,int ,int ) ;
 int XSetStipple (int ,int ,int ) ;
 int XSetTSOrigin (int ,int ,int ,int ) ;
 int hatch_patterns ;
 int ui_create_glyph (TYPE_2__*,int,int,int*) ;
 int ui_destroy_glyph (TYPE_2__*,int ) ;
 int unimpl (char*,int) ;

void
ui_polygon(RDPCLIENT * This, uint8 opcode,
               uint8 fillmode,
               POINT * point, int npoints,
                BRUSH * brush, int bgcolour, int fgcolour)
{
 uint8 style, i, ipattern[8];
 Pixmap fill;

 SET_FUNCTION(opcode);

 switch (fillmode)
 {
  case 129:
   XSetFillRule(This->display, This->xwin.gc, EvenOddRule);
   break;
  case 128:
   XSetFillRule(This->display, This->xwin.gc, WindingRule);
   break;
  default:
   unimpl("fill mode %d\n", fillmode);
 }

 if (brush)
  style = brush->style;
 else
  style = 0;

 switch (style)
 {
  case 0:
   SET_FOREGROUND(fgcolour);
   FILL_POLYGON((XPoint *) point, npoints);
   break;

  case 2:
   fill = (Pixmap) ui_create_glyph(This, 8, 8,
       hatch_patterns + brush->pattern[0] * 8);
   SET_FOREGROUND(fgcolour);
   SET_BACKGROUND(bgcolour);
   XSetFillStyle(This->display, This->xwin.gc, FillOpaqueStippled);
   XSetStipple(This->display, This->xwin.gc, fill);
   XSetTSOrigin(This->display, This->xwin.gc, brush->xorigin, brush->yorigin);
   FILL_POLYGON((XPoint *) point, npoints);
   XSetFillStyle(This->display, This->xwin.gc, FillSolid);
   XSetTSOrigin(This->display, This->xwin.gc, 0, 0);
   ui_destroy_glyph(This, (HGLYPH) fill);
   break;

  case 3:
   for (i = 0; i != 8; i++)
    ipattern[7 - i] = brush->pattern[i];
   fill = (Pixmap) ui_create_glyph(This, 8, 8, ipattern);
   SET_FOREGROUND(bgcolour);
   SET_BACKGROUND(fgcolour);
   XSetFillStyle(This->display, This->xwin.gc, FillOpaqueStippled);
   XSetStipple(This->display, This->xwin.gc, fill);
   XSetTSOrigin(This->display, This->xwin.gc, brush->xorigin, brush->yorigin);
   FILL_POLYGON((XPoint *) point, npoints);
   XSetFillStyle(This->display, This->xwin.gc, FillSolid);
   XSetTSOrigin(This->display, This->xwin.gc, 0, 0);
   ui_destroy_glyph(This, (HGLYPH) fill);
   break;

  default:
   unimpl("brush %d\n", brush->style);
 }

 RESET_FUNCTION(opcode);
}
