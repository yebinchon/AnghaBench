
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_irect ;


 int UI_COLOR_BEVEL_1 ;
 int UI_COLOR_BEVEL_2 ;
 int UI_COLOR_BEVEL_3 ;
 int UI_COLOR_BEVEL_4 ;
 int ui_draw_bevel_imp (int ,int ,int ,int ,int ) ;

void ui_draw_bevel(fz_irect area, int depressed)
{
 if (depressed)
  ui_draw_bevel_imp(area, UI_COLOR_BEVEL_2, UI_COLOR_BEVEL_1, UI_COLOR_BEVEL_3, UI_COLOR_BEVEL_4);
 else
  ui_draw_bevel_imp(area, UI_COLOR_BEVEL_4, UI_COLOR_BEVEL_3, UI_COLOR_BEVEL_2, UI_COLOR_BEVEL_1);
}
