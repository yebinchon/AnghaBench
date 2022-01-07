
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scroll_region_right; int scroll_region_left; int scroll_region_bot; int back_pixel; } ;


 TYPE_1__ gui ;
 int gui_mch_set_bg_color (int ) ;
 int vimjs_delete_lines (int,int,int ,int ,int ) ;

void
gui_mch_delete_lines(int row, int num_lines)
{
    gui_mch_set_bg_color(gui.back_pixel);
    vimjs_delete_lines(num_lines, row, gui.scroll_region_bot, gui.scroll_region_left, gui.scroll_region_right);
}
