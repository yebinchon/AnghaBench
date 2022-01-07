
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int receiver; int thread; } ;


 int SDL_WaitThread (int ,int *) ;
 int receiver_join (int *) ;

void
controller_join(struct controller *controller) {
    SDL_WaitThread(controller->thread, ((void*)0));
    receiver_join(&controller->receiver);
}
