
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int back_pixel; } ;


 TYPE_1__ gui ;
 int gui_mch_set_bg_color (int ) ;
 int vimjs_clear_all () ;

void
gui_mch_clear_all(void)
{
    gui_mch_set_bg_color(gui.back_pixel);
    vimjs_clear_all();
}
