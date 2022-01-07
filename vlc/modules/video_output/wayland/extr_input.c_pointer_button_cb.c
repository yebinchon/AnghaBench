
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct seat_data {int owner; } ;





 int MOUSE_BUTTON_CENTER ;
 int MOUSE_BUTTON_LEFT ;
 int MOUSE_BUTTON_RIGHT ;


 int pointer_show (struct seat_data*,struct wl_pointer*) ;
 int vout_window_ReportMousePressed (int ,int) ;
 int vout_window_ReportMouseReleased (int ,int) ;

__attribute__((used)) static void pointer_button_cb(void *data, struct wl_pointer *pointer,
                              uint32_t serial, uint32_t time,
                              uint32_t keycode, uint32_t state)
{
    struct seat_data *sd = data;
    int button;

    pointer_show(sd, pointer);

    switch (keycode)
    {
        case 132:
            button = MOUSE_BUTTON_LEFT;
            break;
        case 130:
            button = MOUSE_BUTTON_RIGHT;
            break;
        case 131:
            button = MOUSE_BUTTON_CENTER;
            break;
        default:
            return;
    }

    switch (state)
    {
        case 128:
            vout_window_ReportMouseReleased(sd->owner, button);
            break;
        case 129:
            vout_window_ReportMousePressed(sd->owner, button);
            break;
    }

    (void) serial; (void) time;
}
