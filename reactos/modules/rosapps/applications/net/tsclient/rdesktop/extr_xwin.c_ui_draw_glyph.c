
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gc; } ;
struct TYPE_5__ {TYPE_1__ xwin; int display; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int Pixmap ;
typedef scalar_t__ HGLYPH ;


 int FILL_RECTANGLE_BACKSTORE (int,int,int,int) ;
 int FillOpaqueStippled ;
 int FillSolid ;
 int FillStippled ;
 int MIX_TRANSPARENT ;
 int SET_BACKGROUND (int) ;
 int SET_FOREGROUND (int) ;
 int XSetFillStyle (int ,int ,int ) ;
 int XSetStipple (int ,int ,int ) ;
 int XSetTSOrigin (int ,int ,int,int) ;

void
ui_draw_glyph(RDPCLIENT * This, int mixmode,
                  int x, int y, int cx, int cy,
                 HGLYPH glyph, int srcx, int srcy,
       int bgcolour, int fgcolour)
{
 SET_FOREGROUND(fgcolour);
 SET_BACKGROUND(bgcolour);

 XSetFillStyle(This->display, This->xwin.gc,
        (mixmode == MIX_TRANSPARENT) ? FillStippled : FillOpaqueStippled);
 XSetStipple(This->display, This->xwin.gc, (Pixmap) glyph);
 XSetTSOrigin(This->display, This->xwin.gc, x, y);

 FILL_RECTANGLE_BACKSTORE(x, y, cx, cy);

 XSetFillStyle(This->display, This->xwin.gc, FillSolid);
}
