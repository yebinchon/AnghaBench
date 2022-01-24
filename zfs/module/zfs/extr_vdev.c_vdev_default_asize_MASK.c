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
struct TYPE_5__ {int vdev_children; int /*<<< orphan*/ * vdev_child; TYPE_1__* vdev_top; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {unsigned long long vdev_ashift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC3(vdev_t *vd, uint64_t psize)
{
	uint64_t asize = FUNC1(psize, 1ULL << vd->vdev_top->vdev_ashift);
	uint64_t csize;

	for (int c = 0; c < vd->vdev_children; c++) {
		csize = FUNC2(vd->vdev_child[c], psize);
		asize = FUNC0(asize, csize);
	}

	return (asize);
}