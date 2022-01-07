
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int mutex; int cond; scalar_t__ marked_as_waiting; } ;
typedef TYPE_1__ opj_worker_thread_t ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* worker_thread; } ;
typedef TYPE_2__ opj_worker_thread_list_t ;
typedef int opj_worker_thread_job_t ;
struct TYPE_10__ {scalar_t__ pending_jobs_count; scalar_t__ signaling_threshold; scalar_t__ state; scalar_t__ waiting_worker_thread_count; scalar_t__ worker_threads_count; int mutex; int cond; TYPE_2__* waiting_worker_thread_list; TYPE_4__* job_queue; } ;
typedef TYPE_3__ opj_thread_pool_t ;
struct TYPE_11__ {int * job; struct TYPE_11__* next; } ;
typedef TYPE_4__ opj_job_list_t ;
typedef scalar_t__ OPJ_BOOL ;


 scalar_t__ OPJWTS_ERROR ;
 scalar_t__ OPJWTS_STOP ;
 scalar_t__ OPJ_FALSE ;
 scalar_t__ OPJ_TRUE ;
 int assert (int) ;
 int opj_cond_signal (int ) ;
 int opj_cond_wait (int ,int ) ;
 int opj_free (TYPE_4__*) ;
 scalar_t__ opj_malloc (int) ;
 int opj_mutex_lock (int ) ;
 int opj_mutex_unlock (int ) ;

__attribute__((used)) static opj_worker_thread_job_t* opj_thread_pool_get_next_job(
    opj_thread_pool_t* tp,
    opj_worker_thread_t* worker_thread,
    OPJ_BOOL signal_job_finished)
{
    while (OPJ_TRUE) {
        opj_job_list_t* top_job_iter;

        opj_mutex_lock(tp->mutex);

        if (signal_job_finished) {
            signal_job_finished = OPJ_FALSE;
            tp->pending_jobs_count --;

            if (tp->pending_jobs_count <= tp->signaling_threshold) {
                opj_cond_signal(tp->cond);
            }
        }

        if (tp->state == OPJWTS_STOP) {
            opj_mutex_unlock(tp->mutex);
            return ((void*)0);
        }
        top_job_iter = tp->job_queue;
        if (top_job_iter) {
            opj_worker_thread_job_t* job;
            tp->job_queue = top_job_iter->next;

            job = top_job_iter->job;
            opj_mutex_unlock(tp->mutex);
            opj_free(top_job_iter);
            return job;
        }


        if (!worker_thread->marked_as_waiting) {
            opj_worker_thread_list_t* item;

            worker_thread->marked_as_waiting = OPJ_TRUE;
            tp->waiting_worker_thread_count ++;
            assert(tp->waiting_worker_thread_count <= tp->worker_threads_count);

            item = (opj_worker_thread_list_t*) opj_malloc(sizeof(opj_worker_thread_list_t));
            if (item == ((void*)0)) {
                tp->state = OPJWTS_ERROR;
                opj_cond_signal(tp->cond);

                opj_mutex_unlock(tp->mutex);
                return ((void*)0);
            }

            item->worker_thread = worker_thread;
            item->next = tp->waiting_worker_thread_list;
            tp->waiting_worker_thread_list = item;
        }


        opj_cond_signal(tp->cond);

        opj_mutex_lock(worker_thread->mutex);
        opj_mutex_unlock(tp->mutex);


        opj_cond_wait(worker_thread->cond, worker_thread->mutex);

        opj_mutex_unlock(worker_thread->mutex);

    }
}
