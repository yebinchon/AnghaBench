
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * mutex; int cond; int marked_as_waiting; } ;
typedef TYPE_1__ opj_worker_thread_t ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* worker_thread; void* user_data; int (* job_fn ) (void*,int ) ;} ;
typedef TYPE_2__ opj_worker_thread_list_t ;
typedef TYPE_2__ opj_worker_thread_job_t ;
struct TYPE_10__ {int signaling_threshold; int worker_threads_count; int pending_jobs_count; int * mutex; int waiting_worker_thread_count; TYPE_2__* waiting_worker_thread_list; TYPE_5__* job_queue; int cond; int tls; } ;
typedef TYPE_4__ opj_thread_pool_t ;
struct TYPE_11__ {struct TYPE_11__* next; TYPE_2__* job; } ;
typedef TYPE_5__ opj_job_list_t ;
typedef int (* opj_job_fn ) (void*,int ) ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int assert (int ) ;
 int opj_cond_signal (int ) ;
 int opj_cond_wait (int ,int *) ;
 int opj_free (TYPE_2__*) ;
 scalar_t__ opj_malloc (int) ;
 int opj_mutex_lock (int *) ;
 int opj_mutex_unlock (int *) ;

OPJ_BOOL opj_thread_pool_submit_job(opj_thread_pool_t* tp,
                                    opj_job_fn job_fn,
                                    void* user_data)
{
    opj_worker_thread_job_t* job;
    opj_job_list_t* item;

    if (tp->mutex == ((void*)0)) {
        job_fn(user_data, tp->tls);
        return OPJ_TRUE;
    }

    job = (opj_worker_thread_job_t*)opj_malloc(sizeof(opj_worker_thread_job_t));
    if (job == ((void*)0)) {
        return OPJ_FALSE;
    }
    job->job_fn = job_fn;
    job->user_data = user_data;

    item = (opj_job_list_t*) opj_malloc(sizeof(opj_job_list_t));
    if (item == ((void*)0)) {
        opj_free(job);
        return OPJ_FALSE;
    }
    item->job = job;

    opj_mutex_lock(tp->mutex);

    tp->signaling_threshold = 100 * tp->worker_threads_count;
    while (tp->pending_jobs_count > tp->signaling_threshold) {

        opj_cond_wait(tp->cond, tp->mutex);

    }

    item->next = tp->job_queue;
    tp->job_queue = item;
    tp->pending_jobs_count ++;

    if (tp->waiting_worker_thread_list) {
        opj_worker_thread_t* worker_thread;
        opj_worker_thread_list_t* next;
        opj_worker_thread_list_t* to_opj_free;

        worker_thread = tp->waiting_worker_thread_list->worker_thread;

        assert(worker_thread->marked_as_waiting);
        worker_thread->marked_as_waiting = OPJ_FALSE;

        next = tp->waiting_worker_thread_list->next;
        to_opj_free = tp->waiting_worker_thread_list;
        tp->waiting_worker_thread_list = next;
        tp->waiting_worker_thread_count --;

        opj_mutex_lock(worker_thread->mutex);
        opj_mutex_unlock(tp->mutex);
        opj_cond_signal(worker_thread->cond);
        opj_mutex_unlock(worker_thread->mutex);

        opj_free(to_opj_free);
    } else {
        opj_mutex_unlock(tp->mutex);
    }

    return OPJ_TRUE;
}
