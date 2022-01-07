
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signaling_threshold; int pending_jobs_count; int * mutex; int cond; } ;
typedef TYPE_1__ opj_thread_pool_t ;


 int opj_cond_wait (int ,int *) ;
 int opj_mutex_lock (int *) ;
 int opj_mutex_unlock (int *) ;

void opj_thread_pool_wait_completion(opj_thread_pool_t* tp,
                                     int max_remaining_jobs)
{
    if (tp->mutex == ((void*)0)) {
        return;
    }

    if (max_remaining_jobs < 0) {
        max_remaining_jobs = 0;
    }
    opj_mutex_lock(tp->mutex);
    tp->signaling_threshold = max_remaining_jobs;
    while (tp->pending_jobs_count > max_remaining_jobs) {

        opj_cond_wait(tp->cond, tp->mutex);

    }
    opj_mutex_unlock(tp->mutex);
}
