
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vimTextArea; } ;
typedef int PtWidget_t ;
typedef int PtCallbackInfo_t ;


 int PtGiveFocus (int ,int *) ;
 int Pt_CONTINUE ;
 TYPE_1__ gui ;

__attribute__((used)) static int
gui_ph_handle_menu_unrealized(
 PtWidget_t *widget,
 void *data,
 PtCallbackInfo_t *info)
{
    PtGiveFocus(gui.vimTextArea, ((void*)0));
    return Pt_CONTINUE;
}
