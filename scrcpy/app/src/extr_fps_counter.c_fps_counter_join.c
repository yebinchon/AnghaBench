
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fps_counter {scalar_t__ thread; } ;


 int SDL_WaitThread (scalar_t__,int *) ;

void
fps_counter_join(struct fps_counter *counter) {
    if (counter->thread) {
        SDL_WaitThread(counter->thread, ((void*)0));
    }
}
