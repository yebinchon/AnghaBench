
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handler_request {int dummy; } ;
struct file_handler {int queue; int serial; int mutex; int event_cond; } ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int SDL_free (int ) ;
 scalar_t__ cbuf_take (int *,struct file_handler_request*) ;
 int file_handler_request_destroy (struct file_handler_request*) ;

void
file_handler_destroy(struct file_handler *file_handler) {
    SDL_DestroyCond(file_handler->event_cond);
    SDL_DestroyMutex(file_handler->mutex);
    SDL_free(file_handler->serial);

    struct file_handler_request req;
    while (cbuf_take(&file_handler->queue, &req)) {
        file_handler_request_destroy(&req);
    }
}
