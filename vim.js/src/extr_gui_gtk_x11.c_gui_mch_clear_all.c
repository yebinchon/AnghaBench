
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* drawarea; } ;
struct TYPE_3__ {int * window; } ;


 int gdk_window_clear (int *) ;
 TYPE_2__ gui ;

void
gui_mch_clear_all(void)
{
    if (gui.drawarea->window != ((void*)0))
 gdk_window_clear(gui.drawarea->window);
}
