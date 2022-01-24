#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_areq_node_t ;
struct TYPE_4__ {int /*<<< orphan*/  gs_lock; int /*<<< orphan*/  gs_cv; } ;
struct TYPE_3__ {scalar_t__ kp_idlethreads; int kp_threads; int kp_blockedthreads; int kp_nthrs; int /*<<< orphan*/  kp_user_lock; int /*<<< orphan*/  kp_user_cv; scalar_t__ kp_signal_create_thread; } ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int CRYPTO_QUEUED ; 
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* gswq ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ kcf_maxthreads ; 
 int kcf_minthreads ; 
 TYPE_1__* kcfpool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(kcf_areq_node_t *areq)
{
	int err;
	int cnt = 0;

	if ((err = FUNC2(areq)) != 0)
		return (err);

	if (kcfpool->kp_idlethreads > 0) {
		/* Signal an idle thread to run */
		FUNC3(&gswq->gs_lock);
		FUNC1(&gswq->gs_cv);
		FUNC4(&gswq->gs_lock);

		return (CRYPTO_QUEUED);
	}

	/*
	 * We keep the number of running threads to be at
	 * kcf_minthreads to reduce gs_lock contention.
	 */
	cnt = kcf_minthreads -
	    (kcfpool->kp_threads - kcfpool->kp_blockedthreads);
	if (cnt > 0) {
		/*
		 * The following ensures the number of threads in pool
		 * does not exceed kcf_maxthreads.
		 */
		cnt = FUNC0(cnt, kcf_maxthreads - (int)kcfpool->kp_threads);
		if (cnt > 0) {
			/* Signal the creator thread for more threads */
			FUNC3(&kcfpool->kp_user_lock);
			if (!kcfpool->kp_signal_create_thread) {
				kcfpool->kp_signal_create_thread = B_TRUE;
				kcfpool->kp_nthrs = cnt;
				FUNC1(&kcfpool->kp_user_cv);
			}
			FUNC4(&kcfpool->kp_user_lock);
		}
	}

	return (CRYPTO_QUEUED);
}