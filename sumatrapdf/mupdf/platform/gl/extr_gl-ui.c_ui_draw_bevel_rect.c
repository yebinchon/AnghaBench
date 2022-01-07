
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_1__ fz_irect ;


 int glColorHex (unsigned int) ;
 int glRectf (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ui_draw_bevel (TYPE_1__,int) ;

void ui_draw_bevel_rect(fz_irect area, unsigned int fill, int depressed)
{
 ui_draw_bevel(area, depressed);
 glColorHex(fill);
 glRectf(area.x0+2, area.y0+2, area.x1-2, area.y1-2);
}
