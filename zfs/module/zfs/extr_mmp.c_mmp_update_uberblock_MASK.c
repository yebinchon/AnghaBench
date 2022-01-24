#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ub_timestamp; } ;
typedef  TYPE_1__ uberblock_t ;
struct TYPE_9__ {int mmp_seq; int /*<<< orphan*/  mmp_io_lock; TYPE_1__ mmp_ub; } ;
struct TYPE_8__ {TYPE_3__ spa_mmp; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ mmp_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(spa_t *spa, uberblock_t *ub)
{
	mmp_thread_t *mmp = &spa->spa_mmp;

	FUNC2(&mmp->mmp_io_lock);
	mmp->mmp_ub = *ub;
	mmp->mmp_seq = 1;
	mmp->mmp_ub.ub_timestamp = FUNC0();
	FUNC1(spa, B_TRUE);
	FUNC3(&mmp->mmp_io_lock);
}