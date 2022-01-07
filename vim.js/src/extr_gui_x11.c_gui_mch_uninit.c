
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ Widget ;
struct TYPE_2__ {int * dpy; } ;


 int XtCloseDisplay (int *) ;
 TYPE_1__ gui ;
 int * gui_argv ;
 int gui_x11_destroy_widgets () ;
 scalar_t__ vimShell ;
 int vim_free (int *) ;

void
gui_mch_uninit()
{
    gui_x11_destroy_widgets();
    XtCloseDisplay(gui.dpy);
    gui.dpy = ((void*)0);
    vimShell = (Widget)0;
    vim_free(gui_argv);
    gui_argv = ((void*)0);
}
