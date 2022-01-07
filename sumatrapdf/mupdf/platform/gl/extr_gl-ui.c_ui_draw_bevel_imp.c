
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ x0; scalar_t__ y0; } ;
typedef TYPE_1__ fz_irect ;


 int glColorHex (unsigned int) ;
 int glRectf (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void ui_draw_bevel_imp(fz_irect area, unsigned ot, unsigned it, unsigned ib, unsigned ob)
{
 glColorHex(ot);
 glRectf(area.x0, area.y0, area.x1-1, area.y0+1);
 glRectf(area.x0, area.y0+1, area.x0+1, area.y1-1);
 glColorHex(ob);
 glRectf(area.x1-1, area.y0, area.x1, area.y1);
 glRectf(area.x0, area.y1-1, area.x1-1, area.y1);
 glColorHex(it);
 glRectf(area.x0+1, area.y0+1, area.x1-2, area.y0+2);
 glRectf(area.x0+1, area.y0+2, area.x0+2, area.y1-2);
 glColorHex(ib);
 glRectf(area.x1-2, area.y0+1, area.x1-1, area.y1-1);
 glRectf(area.x0+1, area.y1-2, area.x1-2, area.y1-1);
}
