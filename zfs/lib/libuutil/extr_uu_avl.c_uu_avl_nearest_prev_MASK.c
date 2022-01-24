#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ua_tree; scalar_t__ ua_debug; } ;
typedef  TYPE_1__ uu_avl_t ;
typedef  scalar_t__ uu_avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVL_BEFORE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,void*,char*) ; 

void *
FUNC5(uu_avl_t *ap, uu_avl_index_t idx)
{
	if (ap->ua_debug && !FUNC2(ap, idx))
		FUNC4("uu_avl_nearest_prev(%p, %p): %s\n",
		    (void *)ap, (void *)idx, FUNC0(idx)?
		    "outdated index" : "invalid index");
	return (FUNC3(&ap->ua_tree, FUNC1(idx), AVL_BEFORE));
}