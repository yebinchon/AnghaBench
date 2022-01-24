#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int worker_threads_count; int /*<<< orphan*/  tls; int /*<<< orphan*/  mutex; scalar_t__ cond; struct TYPE_6__* waiting_worker_thread_list; struct TYPE_6__* next; struct TYPE_6__* worker_threads; int /*<<< orphan*/  thread; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ opj_worker_thread_list_t ;
typedef  TYPE_1__ opj_thread_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  OPJWTS_STOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(opj_thread_pool_t* tp)
{
    if (!tp) {
        return;
    }
    if (tp->cond) {
        int i;
        FUNC7(tp, 0);

        FUNC4(tp->mutex);
        tp->state = OPJWTS_STOP;
        FUNC5(tp->mutex);

        for (i = 0; i < tp->worker_threads_count; i++) {
            FUNC4(tp->worker_threads[i].mutex);
            FUNC1(tp->worker_threads[i].cond);
            FUNC5(tp->worker_threads[i].mutex);
            FUNC6(tp->worker_threads[i].thread);
            FUNC0(tp->worker_threads[i].cond);
            FUNC3(tp->worker_threads[i].mutex);
        }

        FUNC2(tp->worker_threads);

        while (tp->waiting_worker_thread_list != NULL) {
            opj_worker_thread_list_t* next = tp->waiting_worker_thread_list->next;
            FUNC2(tp->waiting_worker_thread_list);
            tp->waiting_worker_thread_list = next;
        }

        FUNC0(tp->cond);
    }
    FUNC3(tp->mutex);
    FUNC8(tp->tls);
    FUNC2(tp);
}