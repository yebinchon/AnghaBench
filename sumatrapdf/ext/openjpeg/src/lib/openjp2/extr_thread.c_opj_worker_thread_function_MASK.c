#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * tp; } ;
typedef  TYPE_1__ opj_worker_thread_t ;
struct TYPE_7__ {int /*<<< orphan*/  user_data; int /*<<< orphan*/  (* job_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ opj_worker_thread_job_t ;
typedef  int /*<<< orphan*/  opj_tls_t ;
typedef  int /*<<< orphan*/  opj_thread_pool_t ;
typedef  scalar_t__ OPJ_BOOL ;

/* Variables and functions */
 scalar_t__ OPJ_FALSE ; 
 scalar_t__ OPJ_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void* user_data)
{
    opj_worker_thread_t* worker_thread;
    opj_thread_pool_t* tp;
    opj_tls_t* tls;
    OPJ_BOOL job_finished = OPJ_FALSE;

    worker_thread = (opj_worker_thread_t*) user_data;
    tp = worker_thread->tp;
    tls = FUNC3();

    while (OPJ_TRUE) {
        opj_worker_thread_job_t* job = FUNC1(tp, worker_thread,
                                       job_finished);
        if (job == NULL) {
            break;
        }

        if (job->job_fn) {
            job->job_fn(job->user_data, tls);
        }
        FUNC0(job);
        job_finished = OPJ_TRUE;
    }

    FUNC2(tls);
}