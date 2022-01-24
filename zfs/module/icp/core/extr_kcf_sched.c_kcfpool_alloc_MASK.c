#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_pool_t ;
struct TYPE_3__ {int /*<<< orphan*/  kp_user_cv; int /*<<< orphan*/  kp_user_lock; int /*<<< orphan*/  kp_nothr_cv; int /*<<< orphan*/  kp_thread_lock; void* kp_user_waiting; scalar_t__ kp_nthrs; void* kp_signal_create_thread; scalar_t__ kp_blockedthreads; scalar_t__ kp_idlethreads; scalar_t__ kp_threads; } ;

/* Variables and functions */
 void* B_FALSE ; 
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  KCF_DEFAULT_THRTIMEOUT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcf_idlethr_timeout ; 
 TYPE_1__* kcfpool ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3()
{
	kcfpool = FUNC1(sizeof (kcf_pool_t), KM_SLEEP);

	kcfpool->kp_threads = kcfpool->kp_idlethreads = 0;
	kcfpool->kp_blockedthreads = 0;
	kcfpool->kp_signal_create_thread = B_FALSE;
	kcfpool->kp_nthrs = 0;
	kcfpool->kp_user_waiting = B_FALSE;

	FUNC2(&kcfpool->kp_thread_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&kcfpool->kp_nothr_cv, NULL, CV_DEFAULT, NULL);

	FUNC2(&kcfpool->kp_user_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&kcfpool->kp_user_cv, NULL, CV_DEFAULT, NULL);

	kcf_idlethr_timeout = KCF_DEFAULT_THRTIMEOUT;
}