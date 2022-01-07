
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vimjs_resize (int,int) ;

void
gui_mch_set_shellsize(
    int width,
    int height,
    int min_width,
    int min_height,
    int base_width,
    int base_height,
    int direction)
{
    vimjs_resize(width, height);
}
