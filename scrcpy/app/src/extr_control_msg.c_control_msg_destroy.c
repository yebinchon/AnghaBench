
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int text; } ;
struct TYPE_3__ {int text; } ;
struct control_msg {int type; TYPE_2__ set_clipboard; TYPE_1__ inject_text; } ;




 int SDL_free (int ) ;

void
control_msg_destroy(struct control_msg *msg) {
    switch (msg->type) {
        case 129:
            SDL_free(msg->inject_text.text);
            break;
        case 128:
            SDL_free(msg->set_clipboard.text);
            break;
        default:

            break;
    }
}
