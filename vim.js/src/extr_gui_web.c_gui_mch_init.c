
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {int in_focus; void* norm_pixel; void* def_norm_pixel; void* back_pixel; void* def_back_pixel; scalar_t__ scrollbar_height; scalar_t__ scrollbar_width; scalar_t__ border_width; scalar_t__ border_offset; } ;


 int Columns ;
 int OK ;
 int Rows ;
 int TRUE ;
 TYPE_1__ gui ;
 int gui_check_colors () ;
 void* gui_get_color (int *) ;
 int set_normal_colors () ;
 int vimjs_get_char_height () ;
 int vimjs_get_char_width () ;
 int vimjs_get_window_height () ;
 int vimjs_get_window_width () ;
 int vimjs_init () ;

int
gui_mch_init(void)
{
    vimjs_init();
    gui.border_offset = 0;
    gui.border_width = 0;
    gui.scrollbar_width = 0;
    gui.scrollbar_height = 0;

    gui.back_pixel = gui_get_color((char_u*)"black");
    gui.norm_pixel = gui_get_color((char_u*)"white");

    set_normal_colors();
    gui_check_colors();

    gui.def_back_pixel = gui.back_pixel;
    gui.def_norm_pixel = gui.norm_pixel;

    gui.in_focus = TRUE;

    Rows = vimjs_get_window_height() / vimjs_get_char_height();
    Columns = vimjs_get_window_width() / vimjs_get_char_width();

    return OK;
}
