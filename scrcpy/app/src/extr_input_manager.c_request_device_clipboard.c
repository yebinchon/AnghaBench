
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;
struct control_msg {int type; } ;


 int CONTROL_MSG_TYPE_GET_CLIPBOARD ;
 int LOGW (char*) ;
 int controller_push_msg (struct controller*,struct control_msg*) ;

__attribute__((used)) static void
request_device_clipboard(struct controller *controller) {
    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_GET_CLIPBOARD;

    if (!controller_push_msg(controller, &msg)) {
        LOGW("Could not request device clipboard");
    }
}
