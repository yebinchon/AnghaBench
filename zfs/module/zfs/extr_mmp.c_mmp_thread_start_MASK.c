#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  mmp_thread_lock; scalar_t__ mmp_thread; } ;
struct TYPE_7__ {TYPE_2__ spa_mmp; } ;
typedef  TYPE_1__ spa_t ;
typedef  TYPE_2__ mmp_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  TS_RUN ; 
 int /*<<< orphan*/  defclsyspri ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  mmp_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p0 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(spa_t *spa)
{
	mmp_thread_t *mmp = &spa->spa_mmp;

	if (FUNC4(spa)) {
		FUNC1(&mmp->mmp_thread_lock);
		if (!mmp->mmp_thread) {
			mmp->mmp_thread = FUNC5(NULL, 0, mmp_thread,
			    spa, 0, &p0, TS_RUN, defclsyspri);
			FUNC6("MMP thread started pool '%s' "
			    "gethrtime %llu", FUNC3(spa), FUNC0());
		}
		FUNC2(&mmp->mmp_thread_lock);
	}
}