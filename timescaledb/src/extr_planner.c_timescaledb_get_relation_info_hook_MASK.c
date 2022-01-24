#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int compressed; } ;
typedef  TYPE_3__ TimescaleDBPrivate ;
struct TYPE_22__ {scalar_t__ compressed_chunk_id; } ;
struct TYPE_27__ {TYPE_2__ fd; } ;
struct TYPE_26__ {TYPE_1__* parse; } ;
struct TYPE_25__ {int /*<<< orphan*/  relid; int /*<<< orphan*/  inh; } ;
struct TYPE_24__ {int /*<<< orphan*/  indexlist; int /*<<< orphan*/ * fdw_private; int /*<<< orphan*/  relid; } ;
struct TYPE_21__ {int /*<<< orphan*/  rtable; } ;
typedef  TYPE_4__ RelOptInfo ;
typedef  TYPE_5__ RangeTblEntry ;
typedef  TYPE_6__ PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_7__ Chunk ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  ts_guc_enable_constraint_exclusion ; 
 scalar_t__ ts_guc_enable_transparent_decompression ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC15(PlannerInfo *root, Oid relation_objectid, bool inhparent,
								   RelOptInfo *rel)
{
	RangeTblEntry *rte;

	if (&prev_get_relation_info_hook != NULL)
		FUNC6(root, relation_objectid, inhparent, rel);

	if (!FUNC11() || !ts_guc_enable_constraint_exclusion)
		return;

	rte = FUNC7(rel->relid, root->parse->rtable);

	/*
	 * We expand the hypertable chunks into an append relation. Previously, in
	 * `turn_off_inheritance_walker` we suppressed this expansion. This hook
	 * is really the first one that's called after the initial planner setup
	 * and so it's convenient to do the expansion here. Note that this is
	 * after the usual expansion happens in `expand_inherited_tables` (called
	 * in `subquery_planner`). Note also that `get_relation_info` (the
	 * function that calls this hook at the end) is the expensive function to
	 * run on many chunks so the expansion really cannot be called before this
	 * hook.
	 */
	if (!rte->inh && FUNC4(rte))
	{
		Cache *hcache = FUNC13();
		Hypertable *ht = FUNC12(hcache, rte->relid);

		FUNC0(ht != NULL);

		FUNC0(rel->fdw_private == NULL);
		rel->fdw_private = FUNC5(sizeof(TimescaleDBPrivate));

		FUNC14(ht, root, relation_objectid, inhparent, rel);
#if PG11_GE
		setup_append_rel_array(root);
#endif

		FUNC9(hcache);
	}

	if (ts_guc_enable_transparent_decompression && FUNC3(rel, rte))
	{
		Oid ht_oid = FUNC2(root, rel->relid);
		Cache *hcache = FUNC13();
		Hypertable *ht = FUNC12(hcache, ht_oid);

		if (ht != NULL && FUNC1(ht))
		{
			Chunk *chunk = FUNC10(rte->relid, 0, true);

			if (chunk->fd.compressed_chunk_id > 0)
			{
				FUNC0(rel->fdw_private == NULL);
				rel->fdw_private = FUNC5(sizeof(TimescaleDBPrivate));
				((TimescaleDBPrivate *) rel->fdw_private)->compressed = true;

				/* Planning indexes are expensive, and if this is a compressed chunk, we
				 * know we'll never need to us indexes on the uncompressed version, since all
				 * the data is in the compressed chunk anyway. Therefore, it is much faster if
				 * we simply trash the indexlist here and never plan any useless IndexPaths
				 *  at all
				 */
				rel->indexlist = NIL;
			}
		}
		FUNC9(hcache);
	}
}