#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  compressed_chunk_id; } ;
struct TYPE_18__ {int /*<<< orphan*/  table_id; TYPE_1__ fd; } ;
struct TYPE_17__ {int /*<<< orphan*/ * compressed_rel; int /*<<< orphan*/ * compressed_rte; } ;
struct TYPE_16__ {size_t simple_rel_array_size; int /*<<< orphan*/ ** simple_rel_array; TYPE_2__* parse; int /*<<< orphan*/ ** simple_rte_array; int /*<<< orphan*/ ** append_rel_array; } ;
struct TYPE_15__ {int /*<<< orphan*/  rtable; } ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_3__ PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  size_t Index ;
typedef  TYPE_4__ CompressionInfo ;
typedef  TYPE_5__ Chunk ;
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/ * RELOPT_BASEREL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ **,int) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(PlannerInfo *root, CompressionInfo *info, Chunk *chunk,
								 RelOptInfo *chunk_rel, bool needs_sequence_num)
{
	Index compressed_index = root->simple_rel_array_size;
	Chunk *compressed_chunk = FUNC6(chunk->fd.compressed_chunk_id, 0, true);
	Oid compressed_relid = compressed_chunk->table_id;
	RelOptInfo *compressed_rel;

	root->simple_rel_array_size++;
	root->simple_rel_array =
		FUNC5(root->simple_rel_array, root->simple_rel_array_size * sizeof(RelOptInfo *));
	root->simple_rte_array =
		FUNC5(root->simple_rte_array, root->simple_rel_array_size * sizeof(RangeTblEntry *));
#if PG11_GE
	root->append_rel_array =
		repalloc(root->append_rel_array, root->simple_rel_array_size * sizeof(AppendRelInfo *));
	root->append_rel_array[compressed_index] = NULL;
#endif

	info->compressed_rte = FUNC3(compressed_relid, AccessShareLock);
	root->simple_rte_array[compressed_index] = info->compressed_rte;

	root->parse->rtable = FUNC4(root->parse->rtable, info->compressed_rte);

	root->simple_rel_array[compressed_index] = NULL;

#if PG96
	compressed_rel = build_simple_rel(root, compressed_index, RELOPT_BASEREL);
#else
	compressed_rel = FUNC0(root, compressed_index, NULL);
#endif

	root->simple_rel_array[compressed_index] = compressed_rel;
	info->compressed_rel = compressed_rel;

	FUNC2(compressed_rel, info, needs_sequence_num);
	FUNC1(root, info);
}