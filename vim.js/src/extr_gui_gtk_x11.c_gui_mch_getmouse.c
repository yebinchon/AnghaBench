
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* drawarea; } ;
struct TYPE_3__ {int window; } ;


 int gdk_window_get_pointer (int ,int*,int*,int *) ;
 TYPE_2__ gui ;

void
gui_mch_getmouse(int *x, int *y)
{
    gdk_window_get_pointer(gui.drawarea->window, x, y, ((void*)0));
}
