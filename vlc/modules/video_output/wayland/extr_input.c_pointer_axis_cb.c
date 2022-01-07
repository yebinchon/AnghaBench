
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wl_fixed_t ;
typedef int vout_window_t ;
typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct seat_data {int * owner; } ;


 int MOUSE_BUTTON_WHEEL_DOWN ;
 int MOUSE_BUTTON_WHEEL_LEFT ;
 int MOUSE_BUTTON_WHEEL_RIGHT ;
 int MOUSE_BUTTON_WHEEL_UP ;


 scalar_t__ abs (scalar_t__) ;
 int pointer_show (struct seat_data*,struct wl_pointer*) ;
 int vout_window_ReportMousePressed (int *,int) ;
 int vout_window_ReportMouseReleased (int *,int) ;
 scalar_t__ wl_fixed_from_int (int) ;

__attribute__((used)) static void pointer_axis_cb(void *data, struct wl_pointer *pointer,
                            uint32_t serial, uint32_t type, wl_fixed_t value)
{
    struct seat_data *sd = data;
    vout_window_t *wnd = sd->owner;
    int button;
    bool plus = value > 0;

    pointer_show(sd, pointer);
    value = abs(value);

    switch (type)
    {
        case 128:
            button = plus ? MOUSE_BUTTON_WHEEL_DOWN : MOUSE_BUTTON_WHEEL_UP;
            break;
        case 129:
            button = plus ? MOUSE_BUTTON_WHEEL_RIGHT : MOUSE_BUTTON_WHEEL_LEFT;
            break;
        default:
            return;
    }

    while (value > 0)
    {
        vout_window_ReportMousePressed(wnd, button);
        vout_window_ReportMouseReleased(wnd, button);
        value -= wl_fixed_from_int(10);
    }
    (void) serial;
}
