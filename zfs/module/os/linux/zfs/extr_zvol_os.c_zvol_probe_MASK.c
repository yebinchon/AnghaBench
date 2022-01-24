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
struct TYPE_5__ {int /*<<< orphan*/  zv_state_lock; TYPE_1__* zv_zso; } ;
typedef  TYPE_2__ zvol_state_t ;
struct kobject {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  zvo_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct kobject* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kobject *
FUNC5(dev_t dev, int *part, void *arg)
{
	zvol_state_t *zv;
	struct kobject *kobj;

	zv = FUNC4(dev);
	kobj = zv ? FUNC2(zv->zv_zso->zvo_disk) : NULL;
	FUNC0(zv == NULL || FUNC1(&zv->zv_state_lock));
	if (zv)
		FUNC3(&zv->zv_state_lock);

	return (kobj);
}