#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  parallel_aware; } ;
struct TYPE_23__ {int /*<<< orphan*/ * query_pathkeys; } ;
struct TYPE_22__ {scalar_t__ consider_parallel; } ;
struct TYPE_21__ {int /*<<< orphan*/ * compressed_pathkeys; scalar_t__ can_pushdown_sort; } ;
typedef  TYPE_1__ SortInfo ;
typedef  TYPE_2__ RelOptInfo ;
typedef  TYPE_3__ PlannerInfo ;
typedef  TYPE_4__ Path ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  CompressionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_4__* FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(PlannerInfo *root, RelOptInfo *compressed_rel, int parallel_workers,
							 CompressionInfo *info, SortInfo *sort_info)
{
	Path *compressed_path;

	/* create non parallel scan path */
	compressed_path = FUNC6(root, compressed_rel, NULL, 0);
	FUNC2(compressed_rel, compressed_path);

	/* create parallel scan path */
	if (compressed_rel->consider_parallel && parallel_workers > 0)
	{
		compressed_path = FUNC6(root, compressed_rel, NULL, parallel_workers);
		FUNC0(compressed_path->parallel_aware);
		FUNC1(compressed_rel, compressed_path);
	}

	if (sort_info->can_pushdown_sort)
	{
		/*
		 * If we can push down sort below decompression we temporarily switch
		 * out root->query_pathkeys to allow matching to pathkeys produces by
		 * decompression
		 */
		List *orig_pathkeys = root->query_pathkeys;
		FUNC3(sort_info, root, root->query_pathkeys, info);
		root->query_pathkeys = sort_info->compressed_pathkeys;
		FUNC4(root, compressed_rel);
		FUNC5(root, compressed_rel);
		root->query_pathkeys = orig_pathkeys;
	}
	else
	{
		FUNC4(root, compressed_rel);
		FUNC5(root, compressed_rel);
	}
}