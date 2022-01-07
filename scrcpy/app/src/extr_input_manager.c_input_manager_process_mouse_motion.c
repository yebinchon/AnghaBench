
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct input_manager {int controller; TYPE_1__* screen; } ;
struct control_msg {int dummy; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int frame_size; } ;
typedef TYPE_2__ SDL_MouseMotionEvent ;


 int LOGW (char*) ;
 int controller_push_msg (int ,struct control_msg*) ;
 scalar_t__ convert_mouse_motion (TYPE_2__ const*,int ,struct control_msg*) ;

void
input_manager_process_mouse_motion(struct input_manager *input_manager,
                                   const SDL_MouseMotionEvent *event) {
    if (!event->state) {

        return;
    }
    struct control_msg msg;
    if (convert_mouse_motion(event, input_manager->screen->frame_size, &msg)) {
        if (!controller_push_msg(input_manager->controller, &msg)) {
            LOGW("Could not request 'inject mouse motion event'");
        }
    }
}
