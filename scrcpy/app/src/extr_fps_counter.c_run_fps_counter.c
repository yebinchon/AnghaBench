
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fps_counter {scalar_t__ next_timestamp; int mutex; int state_cond; int started; int interrupted; } ;


 scalar_t__ SDL_AtomicGet (int *) ;
 scalar_t__ SDL_GetTicks () ;
 int SDL_assert (int) ;
 int check_interval_expired (struct fps_counter*,scalar_t__) ;
 int cond_wait (int ,int ) ;
 int cond_wait_timeout (int ,int ,scalar_t__) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

__attribute__((used)) static int
run_fps_counter(void *data) {
    struct fps_counter *counter = data;

    mutex_lock(counter->mutex);
    while (!counter->interrupted) {
        while (!counter->interrupted && !SDL_AtomicGet(&counter->started)) {
            cond_wait(counter->state_cond, counter->mutex);
        }
        while (!counter->interrupted && SDL_AtomicGet(&counter->started)) {
            uint32_t now = SDL_GetTicks();
            check_interval_expired(counter, now);

            SDL_assert(counter->next_timestamp > now);
            uint32_t remaining = counter->next_timestamp - now;


            cond_wait_timeout(counter->state_cond, counter->mutex, remaining);
        }
    }
    mutex_unlock(counter->mutex);
    return 0;
}
