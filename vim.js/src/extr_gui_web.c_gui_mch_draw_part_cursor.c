
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_2__ {int col; int row; } ;


 TYPE_1__ gui ;
 int gui_mch_set_fg_color (int ) ;
 int vimjs_draw_part_cursor (int ,int ,int,int) ;

void
gui_mch_draw_part_cursor(int w, int h, guicolor_T color)
{
    gui_mch_set_fg_color(color);
    vimjs_draw_part_cursor(gui.row, gui.col, w, h);
}
