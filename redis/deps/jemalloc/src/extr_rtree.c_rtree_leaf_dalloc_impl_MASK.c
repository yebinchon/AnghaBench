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
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1(tsdn_t *tsdn, rtree_t *rtree, rtree_leaf_elm_t *leaf) {
	/* Leaves are never deleted during normal operation. */
	FUNC0();
}