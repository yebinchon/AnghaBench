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
struct TYPE_5__ {int /*<<< orphan*/  zthr_state_lock; int /*<<< orphan*/  zthr_thread; int /*<<< orphan*/  zthr_sleep_timeout; void* zthr_arg; int /*<<< orphan*/ * zthr_func; int /*<<< orphan*/ * zthr_checkfunc; int /*<<< orphan*/  zthr_wait_cv; int /*<<< orphan*/  zthr_cv; int /*<<< orphan*/  zthr_request_lock; } ;
typedef  TYPE_1__ zthr_t ;
typedef  int /*<<< orphan*/  zthr_func_t ;
typedef  int /*<<< orphan*/  zthr_checkfunc_t ;
typedef  int /*<<< orphan*/  hrtime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  TS_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minclsyspri ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p0 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zthr_procedure ; 

zthr_t *
FUNC6(zthr_checkfunc_t *checkfunc, zthr_func_t *func,
    void *arg, hrtime_t max_sleep)
{
	zthr_t *t = FUNC1(sizeof (*t), KM_SLEEP);
	FUNC4(&t->zthr_state_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC4(&t->zthr_request_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&t->zthr_cv, NULL, CV_DEFAULT, NULL);
	FUNC0(&t->zthr_wait_cv, NULL, CV_DEFAULT, NULL);

	FUNC2(&t->zthr_state_lock);
	t->zthr_checkfunc = checkfunc;
	t->zthr_func = func;
	t->zthr_arg = arg;
	t->zthr_sleep_timeout = max_sleep;

	t->zthr_thread = FUNC5(NULL, 0, zthr_procedure, t,
	    0, &p0, TS_RUN, minclsyspri);
	FUNC3(&t->zthr_state_lock);

	return (t);
}