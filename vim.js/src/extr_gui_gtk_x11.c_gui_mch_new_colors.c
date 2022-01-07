
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* drawarea; int back_pixel; } ;
struct TYPE_6__ {int pixel; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_5__ {int * window; } ;
typedef TYPE_2__ GdkColor ;


 int gdk_window_set_background (int *,TYPE_2__*) ;
 TYPE_3__ gui ;

void
gui_mch_new_colors(void)
{
    if (gui.drawarea != ((void*)0) && gui.drawarea->window != ((void*)0))
    {
 GdkColor color = { 0, 0, 0, 0 };

 color.pixel = gui.back_pixel;
 gdk_window_set_background(gui.drawarea->window, &color);
    }
}
