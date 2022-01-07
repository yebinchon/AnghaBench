
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gui_resize_shell (int,int) ;
 int new_pixel_height ;
 int new_pixel_width ;

void
gui_may_resize_shell()
{
    int h, w;

    if (new_pixel_height)
    {


 w = new_pixel_width;
 h = new_pixel_height;
 new_pixel_width = 0;
 new_pixel_height = 0;
 gui_resize_shell(w, h);
    }
}
