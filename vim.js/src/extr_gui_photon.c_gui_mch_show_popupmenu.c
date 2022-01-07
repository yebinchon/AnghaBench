
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int submenu_id; } ;
typedef TYPE_1__ vimmenu_T ;


 int PtRealizeWidget (int ) ;
 int PtSetResource (int ,int ,int *,int ) ;
 int Pt_ARG_POS ;
 int abs_mouse ;

void
gui_mch_show_popupmenu(vimmenu_T *menu)
{
    PtSetResource(menu->submenu_id, Pt_ARG_POS, &abs_mouse, 0);
    PtRealizeWidget(menu->submenu_id);
}
