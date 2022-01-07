
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y0; scalar_t__ x0; int y1; int x1; } ;
typedef TYPE_1__ fz_irect ;
struct TYPE_6__ {char const* hot; int down; int lineheight; } ;


 int UI_COLOR_TEXT_FG ;
 int UI_COLOR_TEXT_SEL_BG ;
 int UI_COLOR_TEXT_SEL_FG ;
 int glColorHex (int ) ;
 int glRectf (scalar_t__,int ,int ,int ) ;
 TYPE_4__ ui ;
 int ui_draw_string (scalar_t__,int ,char const*) ;
 scalar_t__ ui_mouse_inside (TYPE_1__) ;
 TYPE_1__ ui_pack (int ,int ) ;

int ui_popup_item(const char *title)
{
 fz_irect area = ui_pack(0, ui.lineheight);

 if (ui_mouse_inside(area))
 {
  ui.hot = title;
  glColorHex(UI_COLOR_TEXT_SEL_BG);
  glRectf(area.x0, area.y0, area.x1, area.y1);
  glColorHex(UI_COLOR_TEXT_SEL_FG);
  ui_draw_string(area.x0 + 4, area.y0, title);
 }
 else
 {
  glColorHex(UI_COLOR_TEXT_FG);
  ui_draw_string(area.x0 + 4, area.y0, title);
 }

 return ui.hot == title && !ui.down;
}
