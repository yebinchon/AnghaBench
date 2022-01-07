
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* active; int x; int y; int* hot; float down_y; scalar_t__ down; } ;


 int UI_COLOR_BUTTON ;
 int UI_COLOR_SCROLLBAR ;
 int fz_make_irect (int,int,int,int) ;
 int fz_maxi (int,int) ;
 int glColorHex (int ) ;
 int glRectf (int,int,int,int) ;
 TYPE_1__ ui ;
 int ui_draw_ibevel_rect (int ,int ,int ) ;

void ui_scrollbar(int x0, int y0, int x1, int y1, int *value, int page_size, int max)
{
 static float start_top = 0;
 float top;

 int total_h = y1 - y0;
 int thumb_h = fz_maxi(x1 - x0, total_h * page_size / max);
 int avail_h = total_h - thumb_h;

 max -= page_size;

 if (max <= 0)
 {
  *value = 0;
  glColorHex(UI_COLOR_SCROLLBAR);
  glRectf(x0, y0, x1, y1);
  return;
 }

 top = (float) *value * avail_h / max;

 if (ui.down && !ui.active)
 {
  if (ui.x >= x0 && ui.x < x1 && ui.y >= y0 && ui.y < y1)
  {
   if (ui.y < y0 + top)
   {
    ui.active = "pgdn";
    *value -= page_size;
   }
   else if (ui.y >= y0 + top + thumb_h)
   {
    ui.active = "pgup";
    *value += page_size;
   }
   else
   {
    ui.hot = value;
    ui.active = value;
    start_top = top;
   }
  }
 }

 if (ui.active == value)
 {
  *value = (start_top + ui.y - ui.down_y) * max / avail_h;
 }

 if (*value < 0)
  *value = 0;
 else if (*value > max)
  *value = max;

 top = (float) *value * avail_h / max;

 glColorHex(UI_COLOR_SCROLLBAR);
 glRectf(x0, y0, x1, y1);
 ui_draw_ibevel_rect(fz_make_irect(x0, y0+top, x1, y0+top+thumb_h), UI_COLOR_BUTTON, 0);
}
