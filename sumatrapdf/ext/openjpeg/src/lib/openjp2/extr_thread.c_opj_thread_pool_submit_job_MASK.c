#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  marked_as_waiting; } ;
typedef  TYPE_1__ opj_worker_thread_t ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* worker_thread; void* user_data; int /*<<< orphan*/  (* job_fn ) (void*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ opj_worker_thread_list_t ;
typedef  TYPE_2__ opj_worker_thread_job_t ;
struct TYPE_10__ {int signaling_threshold; int worker_threads_count; int pending_jobs_count; int /*<<< orphan*/ * mutex; int /*<<< orphan*/  waiting_worker_thread_count; TYPE_2__* waiting_worker_thread_list; TYPE_5__* job_queue; int /*<<< orphan*/  cond; int /*<<< orphan*/  tls; } ;
typedef  TYPE_4__ opj_thread_pool_t ;
struct TYPE_11__ {struct TYPE_11__* next; TYPE_2__* job; } ;
typedef  TYPE_5__ opj_job_list_t ;
typedef  int /*<<< orphan*/  (* opj_job_fn ) (void*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  OPJ_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

OPJ_BOOL FUNC7(opj_thread_pool_t* tp,
                                    opj_job_fn job_fn,
                                    void* user_data)
{
    opj_worker_thread_job_t* job;
    opj_job_list_t* item;

    if (tp->mutex == NULL) {
        job_fn(user_data, tp->tls);
        return OPJ_TRUE;
    }

    job = (opj_worker_thread_job_t*)FUNC4(sizeof(opj_worker_thread_job_t));
    if (job == NULL) {
        return OPJ_FALSE;
    }
    job->job_fn = job_fn;
    job->user_data = user_data;

    item = (opj_job_list_t*) FUNC4(sizeof(opj_job_list_t));
    if (item == NULL) {
        FUNC3(job);
        return OPJ_FALSE;
    }
    item->job = job;

    FUNC5(tp->mutex);

    tp->signaling_threshold = 100 * tp->worker_threads_count;
    while (tp->pending_jobs_count > tp->signaling_threshold) {
        /* printf("%d jobs enqueued. Waiting\n", tp->pending_jobs_count); */
        FUNC2(tp->cond, tp->mutex);
        /* printf("...%d jobs enqueued.\n", tp->pending_jobs_count); */
    }

    item->next = tp->job_queue;
    tp->job_queue = item;
    tp->pending_jobs_count ++;

    if (tp->waiting_worker_thread_list) {
        opj_worker_thread_t* worker_thread;
        opj_worker_thread_list_t* next;
        opj_worker_thread_list_t* to_opj_free;

        worker_thread = tp->waiting_worker_thread_list->worker_thread;

        FUNC0(worker_thread->marked_as_waiting);
        worker_thread->marked_as_waiting = OPJ_FALSE;

        next = tp->waiting_worker_thread_list->next;
        to_opj_free = tp->waiting_worker_thread_list;
        tp->waiting_worker_thread_list = next;
        tp->waiting_worker_thread_count --;

        FUNC5(worker_thread->mutex);
        FUNC6(tp->mutex);
        FUNC1(worker_thread->cond);
        FUNC6(worker_thread->mutex);

        FUNC3(to_opj_free);
    } else {
        FUNC6(tp->mutex);
    }

    return OPJ_TRUE;
}