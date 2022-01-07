
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {scalar_t__ norm_pixel; scalar_t__ back_pixel; } ;


 scalar_t__ INVALCOLOR ;
 TYPE_1__ gui ;
 int gui_set_bg_color (int *) ;
 int gui_set_fg_color (int *) ;

void
gui_check_colors()
{
    if (gui.norm_pixel == gui.back_pixel || gui.norm_pixel == INVALCOLOR)
    {
 gui_set_bg_color((char_u *)"White");
 if (gui.norm_pixel == gui.back_pixel || gui.norm_pixel == INVALCOLOR)
     gui_set_fg_color((char_u *)"Black");
    }
}
