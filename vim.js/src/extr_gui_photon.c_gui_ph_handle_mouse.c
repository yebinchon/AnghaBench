
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_20__ {int y; int x; } ;
struct TYPE_19__ {short border_width; } ;
struct TYPE_15__ {int y; int x; } ;
struct TYPE_18__ {int key_mods; int buttons; int click_count; TYPE_2__ pos; } ;
struct TYPE_14__ {short x; short y; } ;
struct TYPE_17__ {TYPE_1__ ul; } ;
struct TYPE_16__ {TYPE_10__* event; } ;
struct TYPE_13__ {int type; scalar_t__ subtype; } ;
typedef int PtWidget_t ;
typedef TYPE_3__ PtCallbackInfo_t ;
typedef TYPE_4__ PhRect_t ;
typedef TYPE_5__ PhPointerEvent_t ;


 int FALSE ;
 int MOUSE_ALT ;
 int MOUSE_CTRL ;
 int MOUSE_DRAG ;
 int MOUSE_LEFT ;
 int MOUSE_MIDDLE ;
 int MOUSE_RELEASE ;
 int MOUSE_RIGHT ;
 int MOUSE_SHIFT ;
 int MOUSE_SHOW ;
 TYPE_5__* PhGetData (TYPE_10__*) ;
 TYPE_4__* PhGetRects (TYPE_10__*) ;
 int Ph_BUTTON_ADJUST ;
 int Ph_BUTTON_MENU ;
 int Ph_BUTTON_SELECT ;
 int Ph_EV_BUT_RELEASE ;
 int Ph_EV_BUT_REPEAT ;
 int Ph_EV_PTR_MOTION_BUTTON ;
 int Ph_EV_PTR_MOTION_NOBUTTON ;
 scalar_t__ Ph_EV_RELEASE_REAL ;
 int Pk_KM_Alt ;
 int Pk_KM_Ctrl ;
 int Pk_KM_Shift ;
 int Pt_CONTINUE ;
 int TRUE ;
 TYPE_8__ abs_mouse ;
 TYPE_7__ gui ;
 int gui_mch_mousehide (int ) ;
 int gui_mouse_moved (short,short) ;
 int gui_send_mouse_event (int,short,short,int,int) ;

__attribute__((used)) static int
gui_ph_handle_mouse(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    PhPointerEvent_t *pointer;
    PhRect_t *pos;
    int button = 0, repeated_click, modifiers = 0x0;
    short mouse_x, mouse_y;

    pointer = PhGetData(info->event);
    pos = PhGetRects(info->event);

    gui_mch_mousehide(MOUSE_SHOW);





    mouse_x = pos->ul.x + gui.border_width;
    mouse_y = pos->ul.y + gui.border_width;

    if (info->event->type == Ph_EV_PTR_MOTION_NOBUTTON)
    {
 gui_mouse_moved(mouse_x, mouse_y);
 return Pt_CONTINUE;
    }

    if (pointer->key_mods & Pk_KM_Shift)
 modifiers |= MOUSE_SHIFT;
    if (pointer->key_mods & Pk_KM_Ctrl)
 modifiers |= MOUSE_CTRL;
    if (pointer->key_mods & Pk_KM_Alt)
 modifiers |= MOUSE_ALT;





    if (pointer->buttons & Ph_BUTTON_SELECT)
 button = MOUSE_LEFT;

    if (pointer->buttons & Ph_BUTTON_MENU)
    {
 button = MOUSE_RIGHT;

 abs_mouse.x = pointer->pos.x;
 abs_mouse.y = pointer->pos.y;
    }

    if (pointer->buttons & Ph_BUTTON_ADJUST)
 button = MOUSE_MIDDLE;


    if (info->event->type == Ph_EV_BUT_RELEASE)
 button = MOUSE_RELEASE;

    if (info->event->type & Ph_EV_PTR_MOTION_BUTTON)
 button = MOUSE_DRAG;
    if ((button != MOUSE_RELEASE) ||
     (info->event->subtype == Ph_EV_RELEASE_REAL))
    {
 repeated_click = (pointer->click_count >= 2) ? TRUE : FALSE;

 gui_send_mouse_event(button , mouse_x, mouse_y, repeated_click, modifiers);
    }

    return Pt_CONTINUE;
}
