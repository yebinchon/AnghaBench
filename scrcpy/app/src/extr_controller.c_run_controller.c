
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int mutex; int queue; scalar_t__ stopped; int msg_cond; } ;
struct control_msg {int dummy; } ;


 int LOGD (char*) ;
 int SDL_assert (int) ;
 scalar_t__ cbuf_is_empty (int *) ;
 int cbuf_take (int *,struct control_msg*) ;
 int cond_wait (int ,int ) ;
 int control_msg_destroy (struct control_msg*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int process_msg (struct controller*,struct control_msg*) ;

__attribute__((used)) static int
run_controller(void *data) {
    struct controller *controller = data;

    for (;;) {
        mutex_lock(controller->mutex);
        while (!controller->stopped && cbuf_is_empty(&controller->queue)) {
            cond_wait(controller->msg_cond, controller->mutex);
        }
        if (controller->stopped) {

            mutex_unlock(controller->mutex);
            break;
        }
        struct control_msg msg;
        bool non_empty = cbuf_take(&controller->queue, &msg);
        SDL_assert(non_empty);
        mutex_unlock(controller->mutex);

        bool ok = process_msg(controller, &msg);
        control_msg_destroy(&msg);
        if (!ok) {
            LOGD("Could not write msg to socket");
            break;
        }
    }
    return 0;
}
