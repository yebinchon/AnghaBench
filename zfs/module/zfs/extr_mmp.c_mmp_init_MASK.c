#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mmp_kstat_id; int /*<<< orphan*/  mmp_delay; int /*<<< orphan*/  mmp_last_write; int /*<<< orphan*/  mmp_io_lock; int /*<<< orphan*/  mmp_thread_cv; int /*<<< orphan*/  mmp_thread_lock; } ;
struct TYPE_4__ {TYPE_2__ spa_mmp; } ;
typedef  TYPE_1__ spa_t ;
typedef  TYPE_2__ mmp_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_multihost_interval ; 

void
FUNC5(spa_t *spa)
{
	mmp_thread_t *mmp = &spa->spa_mmp;

	FUNC4(&mmp->mmp_thread_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC2(&mmp->mmp_thread_cv, NULL, CV_DEFAULT, NULL);
	FUNC4(&mmp->mmp_io_lock, NULL, MUTEX_DEFAULT, NULL);
	mmp->mmp_kstat_id = 1;

	/*
	 * mmp_write_done() calculates mmp_delay based on prior mmp_delay and
	 * the elapsed time since the last write.  For the first mmp write,
	 * there is no "last write", so we start with fake non-zero values.
	 */
	mmp->mmp_last_write = FUNC3();
	mmp->mmp_delay = FUNC1(FUNC0(zfs_multihost_interval));
}