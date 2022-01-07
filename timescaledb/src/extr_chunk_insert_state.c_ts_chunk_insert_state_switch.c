
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int rel; int result_relation_info; } ;
typedef TYPE_1__ ChunkInsertState ;


 int ExecSetSlotDescriptor (int *,int ) ;
 int RelationGetDescr (int ) ;
 scalar_t__ ResultRelInfo_OnConflictNotNull (int ) ;
 int * ResultRelInfo_OnConflictProjInfoCompat (int ) ;
 int * get_projection_info_slot_compat (int *) ;

void
ts_chunk_insert_state_switch(ChunkInsertState *state)
{
 if (ResultRelInfo_OnConflictNotNull(state->result_relation_info) &&
  ResultRelInfo_OnConflictProjInfoCompat(state->result_relation_info) != ((void*)0))
 {
  TupleTableSlot *slot = get_projection_info_slot_compat(
   ResultRelInfo_OnConflictProjInfoCompat(state->result_relation_info));

  ExecSetSlotDescriptor(slot, RelationGetDescr(state->rel));
 }
}
