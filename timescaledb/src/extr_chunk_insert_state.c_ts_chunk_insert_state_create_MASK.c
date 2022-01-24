#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_9__ ;
typedef  struct TYPE_43__   TYPE_8__ ;
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_28__ ;
typedef  struct TYPE_35__   TYPE_1__ ;
typedef  struct TYPE_34__   TYPE_11__ ;
typedef  struct TYPE_33__   TYPE_10__ ;

/* Type definitions */
struct TYPE_44__ {int /*<<< orphan*/  slot; scalar_t__ tup_conv_map; TYPE_2__* estate; TYPE_7__* result_relation_info; TYPE_8__* rel; int /*<<< orphan*/  mctx; } ;
struct TYPE_43__ {TYPE_1__* rd_rel; } ;
struct TYPE_42__ {TYPE_5__* ri_TrigDesc; int /*<<< orphan*/ * ri_IndexRelationDescs; TYPE_4__* ri_RelationDesc; } ;
struct TYPE_41__ {int /*<<< orphan*/  main_table_relid; } ;
struct TYPE_40__ {scalar_t__ trig_insert_before_statement; scalar_t__ trig_insert_after_statement; scalar_t__ trig_insert_instead_row; } ;
struct TYPE_39__ {TYPE_3__* rd_rel; } ;
struct TYPE_38__ {scalar_t__ relhasindex; } ;
struct TYPE_37__ {int /*<<< orphan*/  es_query_cxt; } ;
struct TYPE_36__ {int /*<<< orphan*/  reltype; } ;
struct TYPE_35__ {scalar_t__ relkind; } ;
struct TYPE_34__ {int /*<<< orphan*/  table_id; } ;
struct TYPE_33__ {scalar_t__ on_conflict; TYPE_6__* hypertable; TYPE_2__* estate; int /*<<< orphan*/  cmd_type; } ;
typedef  TYPE_7__ ResultRelInfo ;
typedef  TYPE_8__* Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Index ;
typedef  TYPE_9__ ChunkInsertState ;
typedef  TYPE_10__ ChunkDispatch ;
typedef  TYPE_11__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ONCONFLICT_NONE ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ RLS_ENABLED ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 TYPE_28__* FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,TYPE_10__*,TYPE_8__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*,TYPE_8__*) ; 
 TYPE_7__* FUNC12 (TYPE_10__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC20 (int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

extern ChunkInsertState *
FUNC22(Chunk *chunk, ChunkDispatch *dispatch)
{
	ChunkInsertState *state;
	Relation rel, parent_rel;
	Index rti;
	MemoryContext old_mcxt;
	MemoryContext cis_context = FUNC0(dispatch->estate->es_query_cxt,
													  "chunk insert state memory context",
													  ALLOCSET_DEFAULT_SIZES);
	ResultRelInfo *resrelinfo;

	/* permissions NOT checked here; were checked at hypertable level */
	if (FUNC8(chunk->table_id, InvalidOid, false) == RLS_ENABLED)
		FUNC14(ERROR,
				(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC16("hypertables do not support row-level security")));

	/*
	 * We must allocate the range table entry on the executor's per-query
	 * context
	 */
	old_mcxt = FUNC4(dispatch->estate->es_query_cxt);

	rel = FUNC19(chunk->table_id, RowExclusiveLock);

	if (rel->rd_rel->relkind != RELKIND_RELATION)
		FUNC13(ERROR, "insert is not on a table");

	rti = FUNC11(dispatch, rel);

	FUNC4(cis_context);
	resrelinfo = FUNC12(dispatch, rel, rti);
	FUNC1(resrelinfo, dispatch->cmd_type);

	state = FUNC20(sizeof(ChunkInsertState));
	state->mctx = cis_context;
	state->rel = rel;
	state->result_relation_info = resrelinfo;
	state->estate = dispatch->estate;

	if (resrelinfo->ri_RelationDesc->rd_rel->relhasindex &&
		resrelinfo->ri_IndexRelationDescs == NULL)
		FUNC2(resrelinfo, dispatch->on_conflict != ONCONFLICT_NONE);

	if (resrelinfo->ri_TrigDesc != NULL)
	{
		if (resrelinfo->ri_TrigDesc->trig_insert_instead_row ||
			resrelinfo->ri_TrigDesc->trig_insert_after_statement ||
			resrelinfo->ri_TrigDesc->trig_insert_before_statement)
			FUNC13(ERROR, "insert trigger on chunk table not supported");
	}

	/* Set the chunk's arbiter indexes for ON CONFLICT statements */
	if (dispatch->on_conflict != ONCONFLICT_NONE)
		FUNC9(state, dispatch, rel);

	/* Set tuple conversion map, if tuple needs conversion */
	parent_rel = FUNC19(dispatch->hypertable->main_table_relid, AccessShareLock);

	if (FUNC21(FUNC5(parent_rel), FUNC5(rel)))
	{
		state->tup_conv_map = FUNC10(FUNC5(parent_rel),
													 FUNC5(rel),
													 FUNC17("could not convert row type"));
		FUNC7(state, dispatch, FUNC6(rel)->reltype);
	}

	/* Need a tuple table slot to store converted tuples */
	if (state->tup_conv_map)
		state->slot = FUNC3(NULL);

	FUNC18(parent_rel, AccessShareLock);

	FUNC4(old_mcxt);

	return state;
}