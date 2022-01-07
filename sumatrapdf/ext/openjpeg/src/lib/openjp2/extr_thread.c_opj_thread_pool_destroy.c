
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int worker_threads_count; int tls; int mutex; scalar_t__ cond; struct TYPE_6__* waiting_worker_thread_list; struct TYPE_6__* next; struct TYPE_6__* worker_threads; int thread; int state; } ;
typedef TYPE_1__ opj_worker_thread_list_t ;
typedef TYPE_1__ opj_thread_pool_t ;


 int OPJWTS_STOP ;
 int opj_cond_destroy (scalar_t__) ;
 int opj_cond_signal (scalar_t__) ;
 int opj_free (TYPE_1__*) ;
 int opj_mutex_destroy (int ) ;
 int opj_mutex_lock (int ) ;
 int opj_mutex_unlock (int ) ;
 int opj_thread_join (int ) ;
 int opj_thread_pool_wait_completion (TYPE_1__*,int ) ;
 int opj_tls_destroy (int ) ;

void opj_thread_pool_destroy(opj_thread_pool_t* tp)
{
    if (!tp) {
        return;
    }
    if (tp->cond) {
        int i;
        opj_thread_pool_wait_completion(tp, 0);

        opj_mutex_lock(tp->mutex);
        tp->state = OPJWTS_STOP;
        opj_mutex_unlock(tp->mutex);

        for (i = 0; i < tp->worker_threads_count; i++) {
            opj_mutex_lock(tp->worker_threads[i].mutex);
            opj_cond_signal(tp->worker_threads[i].cond);
            opj_mutex_unlock(tp->worker_threads[i].mutex);
            opj_thread_join(tp->worker_threads[i].thread);
            opj_cond_destroy(tp->worker_threads[i].cond);
            opj_mutex_destroy(tp->worker_threads[i].mutex);
        }

        opj_free(tp->worker_threads);

        while (tp->waiting_worker_thread_list != ((void*)0)) {
            opj_worker_thread_list_t* next = tp->waiting_worker_thread_list->next;
            opj_free(tp->waiting_worker_thread_list);
            tp->waiting_worker_thread_list = next;
        }

        opj_cond_destroy(tp->cond);
    }
    opj_mutex_destroy(tp->mutex);
    opj_tls_destroy(tp->tls);
    opj_free(tp);
}
