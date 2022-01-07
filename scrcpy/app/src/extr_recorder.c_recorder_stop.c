
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recorder {int stopped; int mutex; int queue_cond; } ;


 int cond_signal (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

void
recorder_stop(struct recorder *recorder) {
    mutex_lock(recorder->mutex);
    recorder->stopped = 1;
    cond_signal(recorder->queue_cond);
    mutex_unlock(recorder->mutex);
}
