
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receiver {int thread; } ;


 int SDL_WaitThread (int ,int *) ;

void
receiver_join(struct receiver *receiver) {
    SDL_WaitThread(receiver->thread, ((void*)0));
}
