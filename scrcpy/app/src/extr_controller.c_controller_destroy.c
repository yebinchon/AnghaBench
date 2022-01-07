
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int receiver; int queue; int mutex; int msg_cond; } ;
struct control_msg {int dummy; } ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 scalar_t__ cbuf_take (int *,struct control_msg*) ;
 int control_msg_destroy (struct control_msg*) ;
 int receiver_destroy (int *) ;

void
controller_destroy(struct controller *controller) {
    SDL_DestroyCond(controller->msg_cond);
    SDL_DestroyMutex(controller->mutex);

    struct control_msg msg;
    while (cbuf_take(&controller->queue, &msg)) {
        control_msg_destroy(&msg);
    }

    receiver_destroy(&controller->receiver);
}
