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
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  rt_root; } ;
typedef  TYPE_1__ range_tree_t ;
typedef  int /*<<< orphan*/  range_seg_t ;
typedef  int /*<<< orphan*/  range_seg_max_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static range_seg_t *
FUNC4(range_tree_t *rt, uint64_t start, uint64_t size)
{
	range_seg_max_t rsearch;
	uint64_t end = start + size;

	FUNC0(size != 0);

	FUNC2(&rsearch, rt, start);
	FUNC1(&rsearch, rt, end);
	return (FUNC3(&rt->rt_root, &rsearch, NULL));
}