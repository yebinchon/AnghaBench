
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct position {int point; int screen_size; } ;
struct input_manager {int controller; TYPE_1__* screen; } ;
struct control_msg {int dummy; } ;
struct TYPE_2__ {int frame_size; } ;
typedef int SDL_MouseWheelEvent ;


 int LOGW (char*) ;
 int controller_push_msg (int ,struct control_msg*) ;
 scalar_t__ convert_mouse_wheel (int const*,struct position,struct control_msg*) ;
 int get_mouse_point (TYPE_1__*) ;

void
input_manager_process_mouse_wheel(struct input_manager *input_manager,
                                  const SDL_MouseWheelEvent *event) {
    struct position position = {
        .screen_size = input_manager->screen->frame_size,
        .point = get_mouse_point(input_manager->screen),
    };
    struct control_msg msg;
    if (convert_mouse_wheel(event, position, &msg)) {
        if (!controller_push_msg(input_manager->controller, &msg)) {
            LOGW("Could not request 'inject mouse wheel event'");
        }
    }
}
