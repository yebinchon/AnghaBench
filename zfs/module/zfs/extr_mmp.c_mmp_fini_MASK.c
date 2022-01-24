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
struct TYPE_5__ {int /*<<< orphan*/  mmp_io_lock; int /*<<< orphan*/  mmp_thread_cv; int /*<<< orphan*/  mmp_thread_lock; } ;
struct TYPE_4__ {TYPE_2__ spa_mmp; } ;
typedef  TYPE_1__ spa_t ;
typedef  TYPE_2__ mmp_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(spa_t *spa)
{
	mmp_thread_t *mmp = &spa->spa_mmp;

	FUNC1(&mmp->mmp_thread_lock);
	FUNC0(&mmp->mmp_thread_cv);
	FUNC1(&mmp->mmp_io_lock);
}