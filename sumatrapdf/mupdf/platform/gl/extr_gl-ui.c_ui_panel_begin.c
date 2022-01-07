
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x0; int y0; int x1; int y1; } ;
typedef TYPE_1__ fz_irect ;


 int UI_COLOR_PANEL ;
 int glColorHex (int ) ;
 int glRectf (int,int,int,int) ;
 TYPE_1__ ui_pack (int,int) ;
 int ui_pack_push (TYPE_1__) ;

void ui_panel_begin(int w, int h, int padx, int pady, int opaque)
{
 fz_irect area = ui_pack(w, h);
 if (opaque)
 {
  glColorHex(UI_COLOR_PANEL);
  glRectf(area.x0, area.y0, area.x1, area.y1);
 }
 area.x0 += padx; area.y0 += padx;
 area.x1 -= pady; area.y1 -= pady;
 ui_pack_push(area);
}
