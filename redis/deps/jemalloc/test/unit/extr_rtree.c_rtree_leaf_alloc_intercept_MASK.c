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
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_5__ {int /*<<< orphan*/  init_lock; } ;
typedef  TYPE_1__ rtree_t ;
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 TYPE_1__ test_rtree ; 

__attribute__((used)) static rtree_leaf_elm_t *
FUNC5(tsdn_t *tsdn, rtree_t *rtree, size_t nelms) {
	rtree_leaf_elm_t *leaf;

	if (rtree != &test_rtree) {
		return FUNC4(tsdn, rtree, nelms);
	}

	FUNC3(tsdn, &rtree->init_lock);
	leaf = (rtree_leaf_elm_t *)FUNC1(nelms, sizeof(rtree_leaf_elm_t));
	FUNC0(leaf, "Unexpected calloc() failure");
	FUNC2(tsdn, &rtree->init_lock);

	return leaf;
}