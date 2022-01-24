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
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_3__ {int /*<<< orphan*/  spa_suspend_lock; int /*<<< orphan*/ * spa_suspend_zio_root; int /*<<< orphan*/  spa_suspend_cv; int /*<<< orphan*/  spa_suspended; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZIO_SUSPEND_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(spa_t *spa)
{
	zio_t *pio;

	/*
	 * Reexecute all previously suspended i/o.
	 */
	FUNC1(&spa->spa_suspend_lock);
	spa->spa_suspended = ZIO_SUSPEND_NONE;
	FUNC0(&spa->spa_suspend_cv);
	pio = spa->spa_suspend_zio_root;
	spa->spa_suspend_zio_root = NULL;
	FUNC2(&spa->spa_suspend_lock);

	if (pio == NULL)
		return (0);

	FUNC3(pio);
	return (FUNC4(pio));
}