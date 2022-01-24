#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_6__ {int /*<<< orphan*/ * mg_alloc_queue_depth; TYPE_1__* mg_class; } ;
typedef  TYPE_2__ metaslab_group_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {TYPE_2__* vdev_mg; } ;
struct TYPE_5__ {int /*<<< orphan*/  mc_alloc_throttle_enabled; } ;

/* Variables and functions */
 int METASLAB_ASYNC_ALLOC ; 
 int METASLAB_DONT_THROTTLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 

void
FUNC3(spa_t *spa, uint64_t vdev, void *tag, int flags,
    int allocator, boolean_t io_complete)
{
	if (!(flags & METASLAB_ASYNC_ALLOC) ||
	    (flags & METASLAB_DONT_THROTTLE))
		return;

	metaslab_group_t *mg = FUNC1(spa, vdev)->vdev_mg;
	if (!mg->mg_class->mc_alloc_throttle_enabled)
		return;

	(void) FUNC2(&mg->mg_alloc_queue_depth[allocator], tag);
	if (io_complete)
		FUNC0(mg, allocator);
}