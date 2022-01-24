#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mmio_rb_tree {int dummy; } ;
struct mem_range {scalar_t__ base; scalar_t__ size; } ;
struct mmio_rb_range {scalar_t__ mr_end; scalar_t__ mr_base; struct mem_range mr_param; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mmio_rb_range*) ; 
 struct mmio_rb_range* FUNC1 (int) ; 
 int FUNC2 (struct mmio_rb_tree*,struct mmio_rb_range*) ; 
 scalar_t__ FUNC3 (struct mmio_rb_tree*,scalar_t__,struct mmio_rb_range**) ; 
 int /*<<< orphan*/  mmio_rwlock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct mmio_rb_tree *rbt, struct mem_range *memp)
{
	struct mmio_rb_range *entry, *mrp;
	int		err;

	err = 0;

	mrp = FUNC1(sizeof(struct mmio_rb_range));
	
	if (mrp != NULL) {
		mrp->mr_param = *memp;
		mrp->mr_base = memp->base;
		mrp->mr_end = memp->base + memp->size - 1;
		FUNC5(&mmio_rwlock);
		if (FUNC3(rbt, memp->base, &entry) != 0)
			err = FUNC2(rbt, mrp);
		FUNC4(&mmio_rwlock);
		if (err)
			FUNC0(mrp);
	} else
		err = ENOMEM;

	return (err);
}