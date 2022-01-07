
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ushort_t ;
struct TYPE_7__ {int vimContainer; int vimWindow; } ;
struct TYPE_6__ {int event_f; int event_state; } ;
struct TYPE_5__ {TYPE_2__* cbdata; } ;
typedef int PtWidget_t ;
typedef TYPE_1__ PtCallbackInfo_t ;
typedef TYPE_2__ PhWindowEvent_t ;


 int FALSE ;
 int MOUSE_SHOW ;

 int Ph_WM_EVSTATE_FOCUS ;


 int PtContainerRelease (int ) ;
 int PtEndFlux (int ) ;
 int PtGetResource (int ,int ,int **,int ) ;
 int Pt_ARG_HEIGHT ;
 int Pt_ARG_WIDTH ;
 int Pt_CONTINUE ;
 int RESIZE_BOTH ;
 int TRUE ;
 TYPE_4__ gui ;
 int gui_focus_change (int ) ;
 int gui_mch_mousehide (int ) ;
 int gui_mch_start_blink () ;
 int gui_mch_stop_blink () ;
 int gui_resize_shell (int ,int ) ;
 int gui_set_shellsize (int ,int ,int ) ;
 int gui_shell_closed () ;
 int is_ignore_draw ;
 scalar_t__ pg_margin_bottom ;
 scalar_t__ pg_margin_left ;
 scalar_t__ pg_margin_right ;
 scalar_t__ pg_margin_top ;

__attribute__((used)) static int
gui_ph_handle_window_cb(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    PhWindowEvent_t *we = info->cbdata;
    ushort_t *width, *height;

    switch (we->event_f) {
 case 130:
     gui_shell_closed();
     break;

 case 129:

     gui_mch_mousehide(MOUSE_SHOW);

     if (we->event_state == Ph_WM_EVSTATE_FOCUS)
     {
  gui_focus_change(TRUE);
  gui_mch_start_blink();
     }
     else
     {
  gui_focus_change(FALSE);
  gui_mch_stop_blink();
     }
     break;

 case 128:
     PtGetResource(gui.vimWindow, Pt_ARG_WIDTH, &width, 0);
     PtGetResource(gui.vimWindow, Pt_ARG_HEIGHT, &height, 0);




     gui_resize_shell(*width, *height);
     gui_set_shellsize(FALSE, FALSE, RESIZE_BOTH);
     is_ignore_draw = FALSE;
     PtEndFlux(gui.vimContainer);
     PtContainerRelease(gui.vimContainer);
     break;

 default:
     break;
    }

    return Pt_CONTINUE;
}
