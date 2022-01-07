
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_28__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_11__ ;
typedef struct TYPE_33__ TYPE_10__ ;


struct TYPE_44__ {int slot; scalar_t__ tup_conv_map; TYPE_2__* estate; TYPE_7__* result_relation_info; TYPE_8__* rel; int mctx; } ;
struct TYPE_43__ {TYPE_1__* rd_rel; } ;
struct TYPE_42__ {TYPE_5__* ri_TrigDesc; int * ri_IndexRelationDescs; TYPE_4__* ri_RelationDesc; } ;
struct TYPE_41__ {int main_table_relid; } ;
struct TYPE_40__ {scalar_t__ trig_insert_before_statement; scalar_t__ trig_insert_after_statement; scalar_t__ trig_insert_instead_row; } ;
struct TYPE_39__ {TYPE_3__* rd_rel; } ;
struct TYPE_38__ {scalar_t__ relhasindex; } ;
struct TYPE_37__ {int es_query_cxt; } ;
struct TYPE_36__ {int reltype; } ;
struct TYPE_35__ {scalar_t__ relkind; } ;
struct TYPE_34__ {int table_id; } ;
struct TYPE_33__ {scalar_t__ on_conflict; TYPE_6__* hypertable; TYPE_2__* estate; int cmd_type; } ;
typedef TYPE_7__ ResultRelInfo ;
typedef TYPE_8__* Relation ;
typedef int MemoryContext ;
typedef int Index ;
typedef TYPE_9__ ChunkInsertState ;
typedef TYPE_10__ ChunkDispatch ;
typedef TYPE_11__ Chunk ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AccessShareLock ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CheckValidResultRelCompat (TYPE_7__*,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ExecOpenIndices (TYPE_7__*,int) ;
 int InvalidOid ;
 int MakeTupleTableSlotCompat (int *) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ ONCONFLICT_NONE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RLS_ENABLED ;
 int RelationGetDescr (TYPE_8__*) ;
 TYPE_28__* RelationGetForm (TYPE_8__*) ;
 int RowExclusiveLock ;
 int adjust_projections (TYPE_9__*,TYPE_10__*,int ) ;
 scalar_t__ check_enable_rls (int ,int ,int) ;
 int chunk_insert_state_set_arbiter_indexes (TYPE_9__*,TYPE_10__*,TYPE_8__*) ;
 scalar_t__ convert_tuples_by_name (int ,int ,int ) ;
 int create_chunk_range_table_entry (TYPE_10__*,TYPE_8__*) ;
 TYPE_7__* create_chunk_result_relation_info (TYPE_10__*,TYPE_8__*,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int gettext_noop (char*) ;
 int heap_close (TYPE_8__*,int ) ;
 TYPE_8__* heap_open (int ,int ) ;
 TYPE_9__* palloc0 (int) ;
 scalar_t__ tuple_conversion_needed (int ,int ) ;

extern ChunkInsertState *
ts_chunk_insert_state_create(Chunk *chunk, ChunkDispatch *dispatch)
{
 ChunkInsertState *state;
 Relation rel, parent_rel;
 Index rti;
 MemoryContext old_mcxt;
 MemoryContext cis_context = AllocSetContextCreate(dispatch->estate->es_query_cxt,
               "chunk insert state memory context",
               ALLOCSET_DEFAULT_SIZES);
 ResultRelInfo *resrelinfo;


 if (check_enable_rls(chunk->table_id, InvalidOid, 0) == RLS_ENABLED)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("hypertables do not support row-level security")));





 old_mcxt = MemoryContextSwitchTo(dispatch->estate->es_query_cxt);

 rel = heap_open(chunk->table_id, RowExclusiveLock);

 if (rel->rd_rel->relkind != RELKIND_RELATION)
  elog(ERROR, "insert is not on a table");

 rti = create_chunk_range_table_entry(dispatch, rel);

 MemoryContextSwitchTo(cis_context);
 resrelinfo = create_chunk_result_relation_info(dispatch, rel, rti);
 CheckValidResultRelCompat(resrelinfo, dispatch->cmd_type);

 state = palloc0(sizeof(ChunkInsertState));
 state->mctx = cis_context;
 state->rel = rel;
 state->result_relation_info = resrelinfo;
 state->estate = dispatch->estate;

 if (resrelinfo->ri_RelationDesc->rd_rel->relhasindex &&
  resrelinfo->ri_IndexRelationDescs == ((void*)0))
  ExecOpenIndices(resrelinfo, dispatch->on_conflict != ONCONFLICT_NONE);

 if (resrelinfo->ri_TrigDesc != ((void*)0))
 {
  if (resrelinfo->ri_TrigDesc->trig_insert_instead_row ||
   resrelinfo->ri_TrigDesc->trig_insert_after_statement ||
   resrelinfo->ri_TrigDesc->trig_insert_before_statement)
   elog(ERROR, "insert trigger on chunk table not supported");
 }


 if (dispatch->on_conflict != ONCONFLICT_NONE)
  chunk_insert_state_set_arbiter_indexes(state, dispatch, rel);


 parent_rel = heap_open(dispatch->hypertable->main_table_relid, AccessShareLock);

 if (tuple_conversion_needed(RelationGetDescr(parent_rel), RelationGetDescr(rel)))
 {
  state->tup_conv_map = convert_tuples_by_name(RelationGetDescr(parent_rel),
              RelationGetDescr(rel),
              gettext_noop("could not convert row type"));
  adjust_projections(state, dispatch, RelationGetForm(rel)->reltype);
 }


 if (state->tup_conv_map)
  state->slot = MakeTupleTableSlotCompat(((void*)0));

 heap_close(parent_rel, AccessShareLock);

 MemoryContextSwitchTo(old_mcxt);

 return state;
}
