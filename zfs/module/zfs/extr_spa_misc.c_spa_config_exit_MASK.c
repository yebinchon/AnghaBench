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
struct TYPE_4__ {TYPE_2__* spa_config_lock; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_5__ {int /*<<< orphan*/  scl_lock; int /*<<< orphan*/  scl_cv; int /*<<< orphan*/ * scl_writer; int /*<<< orphan*/  scl_count; } ;
typedef  TYPE_2__ spa_config_lock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SCL_LOCKS ; 
 int /*<<< orphan*/ * curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void const*) ; 

void
FUNC6(spa_t *spa, int locks, const void *tag)
{
	for (int i = SCL_LOCKS - 1; i >= 0; i--) {
		spa_config_lock_t *scl = &spa->spa_config_lock[i];
		if (!(locks & (1 << i)))
			continue;
		FUNC2(&scl->scl_lock);
		FUNC0(!FUNC4(&scl->scl_count));
		if (FUNC5(&scl->scl_count, tag) == 0) {
			FUNC0(scl->scl_writer == NULL ||
			    scl->scl_writer == curthread);
			scl->scl_writer = NULL;	/* OK in either case */
			FUNC1(&scl->scl_cv);
		}
		FUNC3(&scl->scl_lock);
	}
}