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
struct TYPE_8__ {int /*<<< orphan*/  zv_state_lock; TYPE_1__* zv_zso; } ;
typedef  TYPE_2__ zvol_state_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_7__ {scalar_t__ zvo_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zvol_state_list ; 
 int /*<<< orphan*/  zvol_state_lock ; 

__attribute__((used)) static zvol_state_t *
FUNC6(dev_t dev)
{
	zvol_state_t *zv;

	FUNC4(&zvol_state_lock, RW_READER);
	for (zv = FUNC0(&zvol_state_list); zv != NULL;
	    zv = FUNC1(&zvol_state_list, zv)) {
		FUNC2(&zv->zv_state_lock);
		if (zv->zv_zso->zvo_dev == dev) {
			FUNC5(&zvol_state_lock);
			return (zv);
		}
		FUNC3(&zv->zv_state_lock);
	}
	FUNC5(&zvol_state_lock);

	return (NULL);
}