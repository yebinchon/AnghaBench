
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_9__ {int i_int; } ;
typedef TYPE_2__ vlc_value_t ;
typedef int vlc_object_t ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ intf_thread_t ;
struct TYPE_8__ {int btn_pressed; int y; int x; } ;
struct TYPE_11__ {TYPE_1__ vrnav; } ;
typedef TYPE_4__ intf_sys_t ;


 int KEY_MOUSEWHEEL_FROM_BUTTON (int) ;
 int MOUSE_BUTTON_CENTER ;
 int MOUSE_BUTTON_LEFT ;
 int MOUSE_BUTTON_RIGHT ;
 int MOUSE_BUTTON_WHEEL_RIGHT ;
 int MOUSE_BUTTON_WHEEL_UP ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (char const*) ;
 scalar_t__ var_GetBool (int *,char*) ;
 int var_GetCoords (int *,char*,int *,int *) ;
 int var_SetBool (int ,char*,int) ;
 int var_SetInteger (int ,char*,int) ;
 int var_TriggerCallback (int ,char*) ;
 int vlc_object_instance (TYPE_3__*) ;

__attribute__((used)) static int
MouseButtonCallback(vlc_object_t *obj, char const *var,
                    vlc_value_t oldval, vlc_value_t newval, void *data)
{
    VLC_UNUSED(var);

    intf_thread_t *intf = data;
    intf_sys_t *sys = intf->p_sys;
    vout_thread_t *vout = (vout_thread_t *)obj;

    if ((newval.i_int & (1 << MOUSE_BUTTON_LEFT)) &&
        var_GetBool(vout, "viewpoint-changeable"))
    {
        if (!sys->vrnav.btn_pressed)
        {
            sys->vrnav.btn_pressed = 1;
            var_GetCoords(vout, "mouse-moved", &sys->vrnav.x, &sys->vrnav.y);
        }
    }
    else
        sys->vrnav.btn_pressed = 0;

    unsigned pressed = newval.i_int & ~oldval.i_int;
    if (pressed & (1 << MOUSE_BUTTON_LEFT))
        var_SetBool(vlc_object_instance(intf), "intf-popupmenu", 0);
    if (pressed & (1 << MOUSE_BUTTON_CENTER))
        var_TriggerCallback(vlc_object_instance(intf), "intf-toggle-fscontrol");

    if (pressed & (1 << MOUSE_BUTTON_RIGHT))




        var_SetBool(vlc_object_instance(intf), "intf-popupmenu", 1);
    for (int i = MOUSE_BUTTON_WHEEL_UP; i <= MOUSE_BUTTON_WHEEL_RIGHT; i++)
        if (pressed & (1 << i))
        {
            int keycode = KEY_MOUSEWHEEL_FROM_BUTTON(i);
            var_SetInteger(vlc_object_instance(intf), "key-pressed", keycode);
        }

    return VLC_SUCCESS;
}
