
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {int dummy; } ;
struct TYPE_2__ {int mode; } ;
struct control_msg {TYPE_1__ set_screen_power_mode; int type; } ;
typedef enum screen_power_mode { ____Placeholder_screen_power_mode } screen_power_mode ;


 int CONTROL_MSG_TYPE_SET_SCREEN_POWER_MODE ;
 int LOGW (char*) ;
 int controller_push_msg (struct controller*,struct control_msg*) ;

__attribute__((used)) static void
set_screen_power_mode(struct controller *controller,
                      enum screen_power_mode mode) {
    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_SET_SCREEN_POWER_MODE;
    msg.set_screen_power_mode.mode = mode;

    if (!controller_push_msg(controller, &msg)) {
        LOGW("Could not request 'set screen power mode'");
    }
}
