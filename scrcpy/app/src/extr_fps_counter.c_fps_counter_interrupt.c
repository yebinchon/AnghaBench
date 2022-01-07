
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fps_counter {int interrupted; int state_cond; int mutex; int thread; } ;


 int cond_signal (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

void
fps_counter_interrupt(struct fps_counter *counter) {
    if (!counter->thread) {
        return;
    }

    mutex_lock(counter->mutex);
    counter->interrupted = 1;
    mutex_unlock(counter->mutex);

    cond_signal(counter->state_cond);
}
