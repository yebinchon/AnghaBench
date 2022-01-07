
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fps_counter {int state_cond; int started; } ;


 int SDL_AtomicSet (int *,int ) ;
 int cond_signal (int ) ;

void
fps_counter_stop(struct fps_counter *counter) {
    SDL_AtomicSet(&counter->started, 0);
    cond_signal(counter->state_cond);
}
