
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vimjs_get_window_height () ;
 int vimjs_get_window_width () ;

void
gui_mch_get_screen_dimensions(int *screen_w, int *screen_h)
{
    *screen_w = vimjs_get_window_width();
    *screen_h = vimjs_get_window_height();
}
