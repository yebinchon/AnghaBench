
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct input_manager {TYPE_2__* video_buffer; int screen; struct controller* controller; } ;
struct fps_counter {int dummy; } ;
struct controller {int dummy; } ;
struct control_msg {int dummy; } ;
struct TYPE_6__ {int mod; int sym; } ;
struct TYPE_8__ {scalar_t__ type; int repeat; TYPE_1__ keysym; } ;
struct TYPE_7__ {struct fps_counter* fps_counter; } ;
typedef int SDL_Keycode ;
typedef TYPE_3__ SDL_KeyboardEvent ;


 int ACTION_DOWN ;
 int ACTION_UP ;
 int KMOD_LALT ;
 int KMOD_LCTRL ;
 int KMOD_LGUI ;
 int KMOD_LSHIFT ;
 int KMOD_RALT ;
 int KMOD_RCTRL ;
 int KMOD_RGUI ;
 int KMOD_RSHIFT ;
 int LOGW (char*) ;
 int SCREEN_POWER_MODE_OFF ;
 scalar_t__ SDL_KEYDOWN ;
 int action_app_switch (struct controller*,int) ;
 int action_back (struct controller*,int) ;
 int action_home (struct controller*,int) ;
 int action_menu (struct controller*,int) ;
 int action_power (struct controller*,int) ;
 int action_volume_down (struct controller*,int) ;
 int action_volume_up (struct controller*,int) ;
 int clipboard_paste (struct controller*) ;
 int collapse_notification_panel (struct controller*) ;
 int controller_push_msg (struct controller*,struct control_msg*) ;
 scalar_t__ convert_input_key (TYPE_3__ const*,struct control_msg*) ;
 int expand_notification_panel (struct controller*) ;
 int request_device_clipboard (struct controller*) ;
 int screen_resize_to_fit (int ) ;
 int screen_resize_to_pixel_perfect (int ) ;
 int screen_switch_fullscreen (int ) ;
 int set_device_clipboard (struct controller*) ;
 int set_screen_power_mode (struct controller*,int ) ;
 int switch_fps_counter_state (struct fps_counter*) ;

void
input_manager_process_key(struct input_manager *input_manager,
                          const SDL_KeyboardEvent *event,
                          bool control) {



    bool ctrl = event->keysym.mod & (KMOD_LCTRL | KMOD_RCTRL);
    bool alt = event->keysym.mod & (KMOD_LALT | KMOD_RALT);
    bool meta = event->keysym.mod & (KMOD_LGUI | KMOD_RGUI);





    if (meta) {


        return;
    }
    bool cmd = ctrl;


    if (alt) {

        return;
    }

    struct controller *controller = input_manager->controller;


    if (ctrl || cmd) {
        SDL_Keycode keycode = event->keysym.sym;
        bool down = event->type == SDL_KEYDOWN;
        int action = down ? ACTION_DOWN : ACTION_UP;
        bool repeat = event->repeat;
        bool shift = event->keysym.mod & (KMOD_LSHIFT | KMOD_RSHIFT);
        switch (keycode) {
            case 136:


                if (control && ctrl && !meta && !shift && !repeat) {
                    action_home(controller, action);
                }
                return;
            case 140:
            case 143:
                if (control && cmd && !shift && !repeat) {
                    action_back(controller, action);
                }
                return;
            case 130:
                if (control && cmd && !shift && !repeat) {
                    action_app_switch(controller, action);
                }
                return;
            case 134:


                if (control && ctrl && !meta && !shift && !repeat) {
                    action_menu(controller, action);
                }
                return;
            case 131:
                if (control && cmd && !shift && !repeat) {
                    action_power(controller, action);
                }
                return;
            case 132:
                if (control && cmd && !shift && down) {
                    set_screen_power_mode(controller, SCREEN_POWER_MODE_OFF);
                }
                return;
            case 142:
                if (control && cmd && !shift) {

                    action_volume_down(controller, action);
                }
                return;
            case 141:
                if (control && cmd && !shift) {

                    action_volume_up(controller, action);
                }
                return;
            case 139:
                if (control && cmd && !shift && !repeat && down) {
                    request_device_clipboard(controller);
                }
                return;
            case 129:
                if (control && cmd && !repeat && down) {
                    if (shift) {

                        set_device_clipboard(controller);
                    } else {

                        clipboard_paste(controller);
                    }
                }
                return;
            case 138:
                if (!shift && cmd && !repeat && down) {
                    screen_switch_fullscreen(input_manager->screen);
                }
                return;
            case 128:
                if (!shift && cmd && !repeat && down) {
                    screen_resize_to_fit(input_manager->screen);
                }
                return;
            case 137:
                if (!shift && cmd && !repeat && down) {
                    screen_resize_to_pixel_perfect(input_manager->screen);
                }
                return;
            case 135:
                if (!shift && cmd && !repeat && down) {
                    struct fps_counter *fps_counter =
                        input_manager->video_buffer->fps_counter;
                    switch_fps_counter_state(fps_counter);
                }
                return;
            case 133:
                if (control && cmd && !repeat && down) {
                    if (shift) {
                        collapse_notification_panel(controller);
                    } else {
                        expand_notification_panel(controller);
                    }
                }
                return;
        }

        return;
    }

    if (!control) {
        return;
    }

    struct control_msg msg;
    if (convert_input_key(event, &msg)) {
        if (!controller_push_msg(controller, &msg)) {
            LOGW("Could not request 'inject keycode'");
        }
    }
}
