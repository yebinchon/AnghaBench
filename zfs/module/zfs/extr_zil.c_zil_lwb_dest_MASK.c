#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lwb_itxs; int /*<<< orphan*/  lwb_waiters; int /*<<< orphan*/  lwb_vdev_tree; int /*<<< orphan*/  lwb_vdev_lock; } ;
typedef  TYPE_1__ lwb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *vbuf, void *unused)
{
	lwb_t *lwb = vbuf;
	FUNC2(&lwb->lwb_vdev_lock);
	FUNC0(&lwb->lwb_vdev_tree);
	FUNC1(&lwb->lwb_waiters);
	FUNC1(&lwb->lwb_itxs);
}