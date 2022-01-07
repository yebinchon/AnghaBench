
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ Widget ;
struct TYPE_2__ {scalar_t__ menu_fg_pixel; } ;


 scalar_t__ INVALCOLOR ;
 int TRUE ;
 int XtNborderColor ;
 int XtVaSetValues (scalar_t__,int ,scalar_t__,int *) ;
 TYPE_1__ gui ;
 int gui_athena_menu_colors (scalar_t__) ;
 int gui_mch_submenu_change (int ,int ) ;
 scalar_t__ menuBar ;
 int root_menu ;
 scalar_t__ toolBar ;

void
gui_mch_new_menu_colors()
{
    if (menuBar == (Widget)0)
 return;
    if (gui.menu_fg_pixel != INVALCOLOR)
 XtVaSetValues(menuBar, XtNborderColor, gui.menu_fg_pixel, ((void*)0));
    gui_athena_menu_colors(menuBar);




    gui_mch_submenu_change(root_menu, TRUE);
}
