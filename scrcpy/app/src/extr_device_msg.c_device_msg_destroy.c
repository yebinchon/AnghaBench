
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int text; } ;
struct device_msg {scalar_t__ type; TYPE_1__ clipboard; } ;


 scalar_t__ DEVICE_MSG_TYPE_CLIPBOARD ;
 int SDL_free (int ) ;

void
device_msg_destroy(struct device_msg *msg) {
    if (msg->type == DEVICE_MSG_TYPE_CLIPBOARD) {
        SDL_free(msg->clipboard.text);
    }
}
