
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fps_counter {int mutex; int nr_rendered; int started; } ;


 int SDL_AtomicGet (int *) ;
 int SDL_GetTicks () ;
 int check_interval_expired (struct fps_counter*,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

void
fps_counter_add_rendered_frame(struct fps_counter *counter) {
    if (!SDL_AtomicGet(&counter->started)) {
        return;
    }

    mutex_lock(counter->mutex);
    uint32_t now = SDL_GetTicks();
    check_interval_expired(counter, now);
    ++counter->nr_rendered;
    mutex_unlock(counter->mutex);
}
