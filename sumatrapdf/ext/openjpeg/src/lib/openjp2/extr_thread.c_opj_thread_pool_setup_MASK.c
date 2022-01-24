#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * thread; int /*<<< orphan*/  marked_as_waiting; int /*<<< orphan*/ * mutex; int /*<<< orphan*/ * cond; TYPE_2__* tp; } ;
typedef  TYPE_1__ opj_worker_thread_t ;
struct TYPE_6__ {int worker_threads_count; int waiting_worker_thread_count; scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * cond; TYPE_1__* worker_threads; } ;
typedef  TYPE_2__ opj_thread_pool_t ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 scalar_t__ OPJWTS_ERROR ; 
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  OPJ_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  opj_worker_thread_function ; 

__attribute__((used)) static OPJ_BOOL FUNC9(opj_thread_pool_t* tp, int num_threads)
{
    int i;
    OPJ_BOOL bRet = OPJ_TRUE;

    FUNC0(num_threads > 0);

    tp->cond = FUNC2();
    if (tp->cond == NULL) {
        return OPJ_FALSE;
    }

    tp->worker_threads = (opj_worker_thread_t*) FUNC1((size_t)num_threads,
                         sizeof(opj_worker_thread_t));
    if (tp->worker_threads == NULL) {
        return OPJ_FALSE;
    }
    tp->worker_threads_count = num_threads;

    for (i = 0; i < num_threads; i++) {
        tp->worker_threads[i].tp = tp;

        tp->worker_threads[i].mutex = FUNC4();
        if (tp->worker_threads[i].mutex == NULL) {
            tp->worker_threads_count = i;
            bRet = OPJ_FALSE;
            break;
        }

        tp->worker_threads[i].cond = FUNC2();
        if (tp->worker_threads[i].cond == NULL) {
            FUNC5(tp->worker_threads[i].mutex);
            tp->worker_threads_count = i;
            bRet = OPJ_FALSE;
            break;
        }

        tp->worker_threads[i].marked_as_waiting = OPJ_FALSE;

        tp->worker_threads[i].thread = FUNC8(opj_worker_thread_function,
                                       &(tp->worker_threads[i]));
        if (tp->worker_threads[i].thread == NULL) {
            tp->worker_threads_count = i;
            bRet = OPJ_FALSE;
            break;
        }
    }

    /* Wait all threads to be started */
    /* printf("waiting for all threads to be started\n"); */
    FUNC6(tp->mutex);
    while (tp->waiting_worker_thread_count < num_threads) {
        FUNC3(tp->cond, tp->mutex);
    }
    FUNC7(tp->mutex);
    /* printf("all threads started\n"); */

    if (tp->state == OPJWTS_ERROR) {
        bRet = OPJ_FALSE;
    }

    return bRet;
}