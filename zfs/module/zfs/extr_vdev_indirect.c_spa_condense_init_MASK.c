#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_condensing_indirect; int /*<<< orphan*/  spa_condensing_indirect_phys; int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_CONDENSING_INDIRECT ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

int
FUNC3(spa_t *spa)
{
	int error = FUNC2(spa->spa_meta_objset,
	    DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_CONDENSING_INDIRECT, sizeof (uint64_t),
	    sizeof (spa->spa_condensing_indirect_phys) / sizeof (uint64_t),
	    &spa->spa_condensing_indirect_phys);
	if (error == 0) {
		if (FUNC1(spa)) {
			spa->spa_condensing_indirect =
			    FUNC0(spa);
		}
		return (0);
	} else if (error == ENOENT) {
		return (0);
	} else {
		return (error);
	}
}