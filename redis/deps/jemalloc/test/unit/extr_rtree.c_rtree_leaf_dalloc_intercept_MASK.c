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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_t ;
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_rtree ; 

__attribute__((used)) static void
FUNC2(tsdn_t *tsdn, rtree_t *rtree,
    rtree_leaf_elm_t *leaf) {
	if (rtree != &test_rtree) {
		FUNC1(tsdn, rtree, leaf);
		return;
	}

	FUNC0(leaf);
}