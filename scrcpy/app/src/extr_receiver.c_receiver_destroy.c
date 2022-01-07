
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receiver {int mutex; } ;


 int SDL_DestroyMutex (int ) ;

void
receiver_destroy(struct receiver *receiver) {
    SDL_DestroyMutex(receiver->mutex);
}
