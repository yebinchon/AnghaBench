
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {unsigned int state; int wnd; } ;
typedef TYPE_2__ seamless_window ;
struct TYPE_14__ {int initial_state; int flags; } ;
typedef TYPE_3__ XWMHints ;
struct TYPE_12__ {int seamless_active; } ;
struct TYPE_15__ {int display; TYPE_1__ xwin; } ;
typedef TYPE_4__ RDPCLIENT ;


 int DefaultScreen (int ) ;
 int IconicState ;



 unsigned int SEAMLESSRDP_NOTYETMAPPED ;
 int StateHint ;
 int XFree (TYPE_3__*) ;
 TYPE_3__* XGetWMHints (int ,int ) ;
 int XIconifyWindow (int ,int ,int ) ;
 int XMapWindow (int ,int ) ;
 int XSetWMHints (int ,int ,TYPE_3__*) ;
 int ewmh_change_state (TYPE_4__*,int ,unsigned int) ;
 TYPE_2__* sw_get_window_by_id (TYPE_4__*,unsigned long) ;
 int warning (char*,unsigned int) ;

void
ui_seamless_setstate(RDPCLIENT * This, unsigned long id, unsigned int state, unsigned long flags)
{
 seamless_window *sw;

 if (!This->xwin.seamless_active)
  return;

 sw = sw_get_window_by_id(This, id);
 if (!sw)
 {
  warning("ui_seamless_setstate: No information for window 0x%lx\n", id);
  return;
 }

 switch (state)
 {
  case 128:
  case 130:
   ewmh_change_state(This, sw->wnd, state);
   XMapWindow(This->display, sw->wnd);
   break;
  case 129:





   if (sw->state == SEAMLESSRDP_NOTYETMAPPED)
   {
    XWMHints *hints;
    hints = XGetWMHints(This->display, sw->wnd);
    if (hints)
    {
     hints->flags |= StateHint;
     hints->initial_state = IconicState;
     XSetWMHints(This->display, sw->wnd, hints);
     XFree(hints);
    }
    XMapWindow(This->display, sw->wnd);
   }
   else
    XIconifyWindow(This->display, sw->wnd, DefaultScreen(This->display));
   break;
  default:
   warning("SeamlessRDP: Invalid state %d\n", state);
   break;
 }

 sw->state = state;
}
