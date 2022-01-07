
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int back_pixel; } ;


 TYPE_1__ gui ;
 int gui_mch_set_bg_color (int ) ;
 int vimjs_clear_block (int,int,int,int) ;

void
gui_mch_clear_block(int row1, int col1, int row2, int col2)
{
    gui_mch_set_bg_color(gui.back_pixel);
    vimjs_clear_block(row1, col1, row2, col2);
}
