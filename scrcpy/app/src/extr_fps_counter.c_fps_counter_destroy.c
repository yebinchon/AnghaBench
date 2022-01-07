
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fps_counter {int mutex; int state_cond; } ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;

void
fps_counter_destroy(struct fps_counter *counter) {
    SDL_DestroyCond(counter->state_cond);
    SDL_DestroyMutex(counter->mutex);
}
