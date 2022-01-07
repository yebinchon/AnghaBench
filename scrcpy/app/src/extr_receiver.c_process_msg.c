
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct receiver {int dummy; } ;
struct TYPE_2__ {int text; } ;
struct device_msg {int type; TYPE_1__ clipboard; } ;



 int LOGI (char*) ;
 int SDL_SetClipboardText (int ) ;

__attribute__((used)) static void
process_msg(struct receiver *receiver, struct device_msg *msg) {
    switch (msg->type) {
        case 128:
            LOGI("Device clipboard copied");
            SDL_SetClipboardText(msg->clipboard.text);
            break;
    }
}
