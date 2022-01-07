
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Widget ;


 int TRUE ;
 int gui_motif_menu_colors (scalar_t__) ;
 scalar_t__ menuBar ;
 int root_menu ;
 int submenu_change (int ,int ) ;
 scalar_t__ toolBar ;
 scalar_t__ toolBarFrame ;

void
gui_mch_new_menu_colors()
{
    if (menuBar == (Widget)0)
 return;
    gui_motif_menu_colors(menuBar);





    submenu_change(root_menu, TRUE);
}
