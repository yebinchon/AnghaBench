
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_12__ {scalar_t__ yoffset; scalar_t__ xoffset; int wnd; } ;
struct TYPE_11__ {int style; int* pattern; int yorigin; int xorigin; } ;
struct TYPE_9__ {int gc; int backstore; } ;
struct TYPE_10__ {TYPE_1__ xwin; int wnd; scalar_t__ ownbackstore; int display; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int Pixmap ;
typedef int HGLYPH ;
typedef TYPE_3__ BRUSH ;


 int FILL_RECTANGLE_BACKSTORE (int,int,int,int) ;
 int FillOpaqueStippled ;
 int FillSolid ;
 int ON_ALL_SEAMLESS_WINDOWS (int (*) (int ,int ,int ,int ,int,int,int,int,int,int),int ) ;
 int RESET_FUNCTION (int) ;
 int SET_BACKGROUND (int) ;
 int SET_FOREGROUND (int) ;
 int SET_FUNCTION (int) ;
 int XCopyArea (int ,int ,int ,int ,int,int,int,int,int,int) ;
 int XSetFillStyle (int ,int ,int ) ;
 int XSetStipple (int ,int ,int ) ;
 int XSetTSOrigin (int ,int ,int ,int ) ;
 int hatch_patterns ;
 TYPE_8__* sw ;
 int ui_create_glyph (TYPE_2__*,int,int,int*) ;
 int ui_destroy_glyph (TYPE_2__*,int ) ;
 int unimpl (char*,int) ;

void
ui_patblt(RDPCLIENT * This, uint8 opcode,
              int x, int y, int cx, int cy,
               BRUSH * brush, int bgcolour, int fgcolour)
{
 Pixmap fill;
 uint8 i, ipattern[8];

 SET_FUNCTION(opcode);

 switch (brush->style)
 {
  case 0:
   SET_FOREGROUND(fgcolour);
   FILL_RECTANGLE_BACKSTORE(x, y, cx, cy);
   break;

  case 2:
   fill = (Pixmap) ui_create_glyph(This, 8, 8,
       hatch_patterns + brush->pattern[0] * 8);
   SET_FOREGROUND(fgcolour);
   SET_BACKGROUND(bgcolour);
   XSetFillStyle(This->display, This->xwin.gc, FillOpaqueStippled);
   XSetStipple(This->display, This->xwin.gc, fill);
   XSetTSOrigin(This->display, This->xwin.gc, brush->xorigin, brush->yorigin);
   FILL_RECTANGLE_BACKSTORE(x, y, cx, cy);
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
   FILL_RECTANGLE_BACKSTORE(x, y, cx, cy);
   XSetFillStyle(This->display, This->xwin.gc, FillSolid);
   XSetTSOrigin(This->display, This->xwin.gc, 0, 0);
   ui_destroy_glyph(This, (HGLYPH) fill);
   break;

  default:
   unimpl("brush %d\n", brush->style);
 }

 RESET_FUNCTION(opcode);

 if (This->ownbackstore)
  XCopyArea(This->display, This->xwin.backstore, This->wnd, This->xwin.gc, x, y, cx, cy, x, y);
 ON_ALL_SEAMLESS_WINDOWS(XCopyArea,
    (This->display, This->ownbackstore ? This->xwin.backstore : This->wnd, sw->wnd, This->xwin.gc,
     x, y, cx, cy, x - sw->xoffset, y - sw->yoffset));
}
