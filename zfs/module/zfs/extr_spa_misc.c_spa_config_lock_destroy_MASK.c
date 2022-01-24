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
struct TYPE_5__ {scalar_t__ scl_write_wanted; int /*<<< orphan*/ * scl_writer; int /*<<< orphan*/  scl_count; int /*<<< orphan*/  scl_cv; int /*<<< orphan*/  scl_lock; } ;
typedef  TYPE_2__ spa_config_lock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SCL_LOCKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(spa_t *spa)
{
	for (int i = 0; i < SCL_LOCKS; i++) {
		spa_config_lock_t *scl = &spa->spa_config_lock[i];
		FUNC2(&scl->scl_lock);
		FUNC1(&scl->scl_cv);
		FUNC3(&scl->scl_count);
		FUNC0(scl->scl_writer == NULL);
		FUNC0(scl->scl_write_wanted == 0);
	}
}