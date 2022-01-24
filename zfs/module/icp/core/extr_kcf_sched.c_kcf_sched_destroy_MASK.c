#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_reqid_table_t ;
typedef  int /*<<< orphan*/  kcf_pool_t ;
typedef  int /*<<< orphan*/  kcf_global_swq_t ;
struct TYPE_5__ {int /*<<< orphan*/  gs_cv; int /*<<< orphan*/  gs_lock; int /*<<< orphan*/  rt_lock; int /*<<< orphan*/  kp_user_cv; int /*<<< orphan*/  kp_user_lock; int /*<<< orphan*/  kp_nothr_cv; int /*<<< orphan*/  kp_thread_lock; } ;

/* Variables and functions */
 int REQID_TABLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* gswq ; 
 scalar_t__ kcf_areq_cache ; 
 scalar_t__ kcf_context_cache ; 
 scalar_t__ kcf_misc_kstat ; 
 TYPE_1__** kcf_reqid_table ; 
 scalar_t__ kcf_sreq_cache ; 
 TYPE_1__* kcfpool ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ntfy_list_cv ; 
 int /*<<< orphan*/  ntfy_list_lock ; 

void
FUNC5(void)
{
	int i;

	if (kcf_misc_kstat)
		FUNC3(kcf_misc_kstat);

	if (kcfpool) {
		FUNC4(&kcfpool->kp_thread_lock);
		FUNC0(&kcfpool->kp_nothr_cv);
		FUNC4(&kcfpool->kp_user_lock);
		FUNC0(&kcfpool->kp_user_cv);

		FUNC2(kcfpool, sizeof (kcf_pool_t));
	}

	for (i = 0; i < REQID_TABLES; i++) {
		if (kcf_reqid_table[i]) {
			FUNC4(&(kcf_reqid_table[i]->rt_lock));
			FUNC2(kcf_reqid_table[i],
			    sizeof (kcf_reqid_table_t));
		}
	}

	if (gswq) {
		FUNC4(&gswq->gs_lock);
		FUNC0(&gswq->gs_cv);
		FUNC2(gswq, sizeof (kcf_global_swq_t));
	}

	if (kcf_context_cache)
		FUNC1(kcf_context_cache);
	if (kcf_areq_cache)
		FUNC1(kcf_areq_cache);
	if (kcf_sreq_cache)
		FUNC1(kcf_sreq_cache);

	FUNC4(&ntfy_list_lock);
	FUNC0(&ntfy_list_cv);
}