
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ Window ;
struct TYPE_4__ {TYPE_1__* mainwin; } ;
struct TYPE_3__ {int * window; } ;
typedef int Display ;


 int FAIL ;
 int * GDK_WINDOW_XDISPLAY (int *) ;
 scalar_t__ GDK_WINDOW_XWINDOW (int *) ;
 int OK ;
 TYPE_2__ gui ;

int
gui_get_x11_windis(Window *win, Display **dis)
{
    if (gui.mainwin != ((void*)0) && gui.mainwin->window != ((void*)0))
    {
 *dis = GDK_WINDOW_XDISPLAY(gui.mainwin->window);
 *win = GDK_WINDOW_XWINDOW(gui.mainwin->window);
 return OK;
    }

    *dis = ((void*)0);
    *win = 0;
    return FAIL;
}
