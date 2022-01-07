
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y1; scalar_t__ x0; int y0; } ;
typedef TYPE_1__ fz_irect ;
typedef enum side { ____Placeholder_side } side ;
struct TYPE_6__ {int* hot; int* active; int cursor; scalar_t__ down_x; scalar_t__ x; scalar_t__ down; } ;


 int GLUT_CURSOR_LEFT_RIGHT ;
 int L ;
 int R ;
 int UI_COLOR_BEVEL_1 ;
 int UI_COLOR_BEVEL_2 ;
 int UI_COLOR_BEVEL_3 ;
 int UI_COLOR_BEVEL_4 ;
 int UI_COLOR_PANEL ;
 int fz_clampi (scalar_t__,int,int) ;
 int glColorHex (int ) ;
 int glRectf (scalar_t__,int ,scalar_t__,int ) ;
 TYPE_4__ ui ;
 scalar_t__ ui_mouse_inside (TYPE_1__) ;
 TYPE_1__ ui_pack (int,int ) ;

void ui_splitter(int *x, int min, int max, enum side side)
{
 static int start_x = 0;
 fz_irect area = ui_pack(4, 0);

 if (ui_mouse_inside(area))
 {
  ui.hot = x;
  if (!ui.active && ui.down)
  {
   ui.active = x;
   start_x = *x;
  }
 }

 if (ui.active == x)
  *x = fz_clampi(start_x + (ui.x - ui.down_x), min, max);

 if (ui.hot == x || ui.active == x)
  ui.cursor = GLUT_CURSOR_LEFT_RIGHT;

 if (side == L)
 {
  glColorHex(UI_COLOR_BEVEL_4);
  glRectf(area.x0+0, area.y0, area.x0+2, area.y1);
  glColorHex(UI_COLOR_BEVEL_3);
  glRectf(area.x0+2, area.y0, area.x0+3, area.y1);
  glColorHex(UI_COLOR_PANEL);
  glRectf(area.x0+3, area.y0, area.x0+4, area.y1);
 }
 if (side == R)
 {
  glColorHex(UI_COLOR_PANEL);
  glRectf(area.x0, area.y0, area.x0+2, area.y1);
  glColorHex(UI_COLOR_BEVEL_2);
  glRectf(area.x0+2, area.y0, area.x0+3, area.y1);
  glColorHex(UI_COLOR_BEVEL_1);
  glRectf(area.x0+3, area.y0, area.x0+4, area.y1);
 }
}
