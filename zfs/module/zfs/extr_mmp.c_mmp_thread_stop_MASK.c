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
struct TYPE_6__ {int mmp_thread_exiting; int /*<<< orphan*/ * mmp_thread; int /*<<< orphan*/  mmp_thread_lock; int /*<<< orphan*/  mmp_thread_cv; } ;
struct TYPE_5__ {TYPE_2__ spa_mmp; } ;
typedef  TYPE_1__ spa_t ;
typedef  TYPE_2__ mmp_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(spa_t *spa)
{
	mmp_thread_t *mmp = &spa->spa_mmp;

	FUNC4(&mmp->mmp_thread_lock);
	mmp->mmp_thread_exiting = 1;
	FUNC1(&mmp->mmp_thread_cv);

	while (mmp->mmp_thread) {
		FUNC2(&mmp->mmp_thread_cv, &mmp->mmp_thread_lock);
	}
	FUNC5(&mmp->mmp_thread_lock);
	FUNC7("MMP thread stopped pool '%s' gethrtime %llu",
	    FUNC6(spa), FUNC3());

	FUNC0(mmp->mmp_thread == NULL);
	mmp->mmp_thread_exiting = 0;
}