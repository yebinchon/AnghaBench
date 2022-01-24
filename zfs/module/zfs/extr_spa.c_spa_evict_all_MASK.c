#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ spa_state; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ POOL_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(void)
{
	spa_t *spa;

	/*
	 * Remove all cached state.  All pools should be closed now,
	 * so every spa in the AVL tree should be unreferenced.
	 */
	FUNC0(&spa_namespace_lock);
	while ((spa = FUNC5(NULL)) != NULL) {
		/*
		 * Stop async tasks.  The async thread may need to detach
		 * a device that's been replaced, which requires grabbing
		 * spa_namespace_lock, so we must drop it here.
		 */
		FUNC6(spa, FTAG);
		FUNC1(&spa_namespace_lock);
		FUNC2(spa);
		FUNC0(&spa_namespace_lock);
		FUNC3(spa, FTAG);

		if (spa->spa_state != POOL_STATE_UNINITIALIZED) {
			FUNC8(spa);
			FUNC4(spa);
		}
		FUNC7(spa);
	}
	FUNC1(&spa_namespace_lock);
}