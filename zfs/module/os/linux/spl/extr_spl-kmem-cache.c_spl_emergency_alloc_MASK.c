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
struct TYPE_7__ {scalar_t__ ske_obj; } ;
typedef  TYPE_1__ spl_kmem_emergency_t ;
struct TYPE_8__ {scalar_t__ skc_obj_emergency; scalar_t__ skc_obj_emergency_max; int /*<<< orphan*/  skc_lock; int /*<<< orphan*/  skc_obj_total; int /*<<< orphan*/  skc_emergency_tree; int /*<<< orphan*/  skc_partial_list; int /*<<< orphan*/  skc_obj_size; } ;
typedef  TYPE_2__ spl_kmem_cache_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(spl_kmem_cache_t *skc, int flags, void **obj)
{
	gfp_t lflags = FUNC5(flags);
	spl_kmem_emergency_t *ske;
	int order = FUNC2(skc->skc_obj_size);
	int empty;

	/* Last chance use a partial slab if one now exists */
	FUNC8(&skc->skc_lock);
	empty = FUNC7(&skc->skc_partial_list);
	FUNC9(&skc->skc_lock);
	if (!empty)
		return (-EEXIST);

	ske = FUNC4(sizeof (*ske), lflags);
	if (ske == NULL)
		return (-ENOMEM);

	ske->ske_obj = FUNC0(lflags, order);
	if (ske->ske_obj == 0) {
		FUNC3(ske);
		return (-ENOMEM);
	}

	FUNC8(&skc->skc_lock);
	empty = FUNC10(&skc->skc_emergency_tree, ske);
	if (FUNC6(empty)) {
		skc->skc_obj_total++;
		skc->skc_obj_emergency++;
		if (skc->skc_obj_emergency > skc->skc_obj_emergency_max)
			skc->skc_obj_emergency_max = skc->skc_obj_emergency;
	}
	FUNC9(&skc->skc_lock);

	if (FUNC11(!empty)) {
		FUNC1(ske->ske_obj, order);
		FUNC3(ske);
		return (-EINVAL);
	}

	*obj = (void *)ske->ske_obj;

	return (0);
}