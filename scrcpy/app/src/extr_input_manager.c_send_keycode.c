
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {int dummy; } ;
struct TYPE_2__ {int keycode; int action; scalar_t__ metastate; } ;
struct control_msg {TYPE_1__ inject_keycode; int type; } ;
typedef enum android_keycode { ____Placeholder_android_keycode } android_keycode ;


 int ACTION_DOWN ;
 int ACTION_UP ;
 int AKEY_EVENT_ACTION_DOWN ;
 int AKEY_EVENT_ACTION_UP ;
 int CONTROL_MSG_TYPE_INJECT_KEYCODE ;
 int LOGW (char*,char const*) ;
 int controller_push_msg (struct controller*,struct control_msg*) ;

__attribute__((used)) static void
send_keycode(struct controller *controller, enum android_keycode keycode,
             int actions, const char *name) {

    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_INJECT_KEYCODE;
    msg.inject_keycode.keycode = keycode;
    msg.inject_keycode.metastate = 0;

    if (actions & ACTION_DOWN) {
        msg.inject_keycode.action = AKEY_EVENT_ACTION_DOWN;
        if (!controller_push_msg(controller, &msg)) {
            LOGW("Could not request 'inject %s (DOWN)'", name);
            return;
        }
    }

    if (actions & ACTION_UP) {
        msg.inject_keycode.action = AKEY_EVENT_ACTION_UP;
        if (!controller_push_msg(controller, &msg)) {
            LOGW("Could not request 'inject %s (UP)'", name);
        }
    }
}
