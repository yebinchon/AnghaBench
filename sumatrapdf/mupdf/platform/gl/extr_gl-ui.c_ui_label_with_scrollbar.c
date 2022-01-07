
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct line {int dummy; } ;
struct TYPE_5__ {int y1; int y0; scalar_t__ x0; scalar_t__ x1; } ;
typedef TYPE_1__ fz_irect ;
struct TYPE_6__ {int lineheight; int scroll_y; int window_h; } ;


 int GL_SCISSOR_TEST ;
 int UI_COLOR_TEXT_FG ;
 int glColorHex (int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glScissor (scalar_t__,int,scalar_t__,int) ;
 int nelem (struct line*) ;
 TYPE_4__ ui ;
 int ui_break_lines (char*,struct line*,int ,scalar_t__,int *) ;
 int ui_draw_lines (scalar_t__,int,struct line*,int) ;
 scalar_t__ ui_mouse_inside (TYPE_1__) ;
 TYPE_1__ ui_pack (int,int) ;
 int ui_scrollbar (scalar_t__,int,scalar_t__,int,int*,int,int) ;

void ui_label_with_scrollbar(char *text, int width, int height, int *scroll)
{
 struct line lines[500];
 fz_irect area;
 int n;

 area = ui_pack(width, height);
 n = ui_break_lines(text, lines, nelem(lines), area.x1-area.x0 - 16, ((void*)0));
 if (n > (area.y1-area.y0) / ui.lineheight)
 {
  if (ui_mouse_inside(area))
   *scroll -= ui.scroll_y * ui.lineheight * 3;
  ui_scrollbar(area.x1-16, area.y0, area.x1, area.y1, scroll, area.y1-area.y0, n * ui.lineheight);
 }
 else
  *scroll = 0;

 glScissor(area.x0, ui.window_h-area.y1, area.x1-area.x0-16, area.y1-area.y0);
 glEnable(GL_SCISSOR_TEST);
 glColorHex(UI_COLOR_TEXT_FG);
 ui_draw_lines(area.x0, area.y0 - *scroll, lines, n);
 glDisable(GL_SCISSOR_TEST);
}
