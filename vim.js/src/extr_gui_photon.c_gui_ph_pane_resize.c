
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vimContainer; } ;
typedef int PtWidget_t ;
typedef int PtCallbackInfo_t ;


 int PtContainerHold (int ) ;
 int PtStartFlux (int ) ;
 scalar_t__ PtWidgetIsRealized (int *) ;
 int Pt_CONTINUE ;
 int TRUE ;
 TYPE_1__ gui ;
 int is_ignore_draw ;

__attribute__((used)) static int
gui_ph_pane_resize(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    if (PtWidgetIsRealized(widget))
    {
 is_ignore_draw = TRUE;
 PtStartFlux(gui.vimContainer);
 PtContainerHold(gui.vimContainer);
    }

    return Pt_CONTINUE;
}
