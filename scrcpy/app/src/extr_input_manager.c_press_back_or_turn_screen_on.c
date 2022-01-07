
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;
struct control_msg {int type; } ;


 int CONTROL_MSG_TYPE_BACK_OR_SCREEN_ON ;
 int LOGW (char*) ;
 int controller_push_msg (struct controller*,struct control_msg*) ;

__attribute__((used)) static void
press_back_or_turn_screen_on(struct controller *controller) {
    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_BACK_OR_SCREEN_ON;

    if (!controller_push_msg(controller, &msg)) {
        LOGW("Could not request 'press back or turn screen on'");
    }
}
