
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handler {int thread; } ;


 int SDL_WaitThread (int ,int *) ;

void
file_handler_join(struct file_handler *file_handler) {
    SDL_WaitThread(file_handler->thread, ((void*)0));
}
