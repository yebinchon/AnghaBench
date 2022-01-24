#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ske_obj; int /*<<< orphan*/  ske_node; } ;
typedef  TYPE_1__ spl_kmem_emergency_t ;
struct TYPE_7__ {int /*<<< orphan*/  skc_lock; int /*<<< orphan*/  skc_obj_total; int /*<<< orphan*/  skc_obj_emergency; int /*<<< orphan*/  skc_emergency_tree; int /*<<< orphan*/  skc_obj_size; } ;
typedef  TYPE_2__ spl_kmem_cache_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int
FUNC7(spl_kmem_cache_t *skc, void *obj)
{
	spl_kmem_emergency_t *ske;
	int order = FUNC1(skc->skc_obj_size);

	FUNC4(&skc->skc_lock);
	ske = FUNC6(&skc->skc_emergency_tree, obj);
	if (ske) {
		FUNC3(&ske->ske_node, &skc->skc_emergency_tree);
		skc->skc_obj_emergency--;
		skc->skc_obj_total--;
	}
	FUNC5(&skc->skc_lock);

	if (ske == NULL)
		return (-ENOENT);

	FUNC0(ske->ske_obj, order);
	FUNC2(ske);

	return (0);
}