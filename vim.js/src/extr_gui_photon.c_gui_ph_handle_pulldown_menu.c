
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int submenu_id; } ;
typedef TYPE_1__ vimmenu_T ;
typedef int PtWidget_t ;
typedef int PtCallbackInfo_t ;


 int PtPositionMenu (int ,int *) ;
 int PtRealizeWidget (int ) ;
 int Pt_CONTINUE ;

__attribute__((used)) static int
gui_ph_handle_pulldown_menu(
 PtWidget_t *widget,
 void *data,
 PtCallbackInfo_t *info)
{
    if (data != ((void*)0))
    {
 vimmenu_T *menu = (vimmenu_T *) data;

 PtPositionMenu(menu->submenu_id, ((void*)0));
 PtRealizeWidget(menu->submenu_id);
    }

    return Pt_CONTINUE;
}
