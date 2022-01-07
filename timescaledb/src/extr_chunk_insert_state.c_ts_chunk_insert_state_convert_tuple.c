
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int * slot; int * tup_conv_map; TYPE_1__* result_relation_info; } ;
struct TYPE_4__ {int ri_RelationDesc; } ;
typedef int Relation ;
typedef int HeapTuple ;
typedef TYPE_2__ ChunkInsertState ;


 int ExecSetSlotDescriptor (int *,int ) ;
 int ExecStoreTuple (int ,int *,int ,int) ;
 int InvalidBuffer ;
 int RelationGetDescr (int ) ;
 int do_convert_tuple (int ,int *) ;

HeapTuple
ts_chunk_insert_state_convert_tuple(ChunkInsertState *state, HeapTuple tuple,
         TupleTableSlot **existing_slot)
{
 Relation chunkrel = state->result_relation_info->ri_RelationDesc;

 if (((void*)0) == state->tup_conv_map)

  return tuple;

 tuple = do_convert_tuple(tuple, state->tup_conv_map);

 ExecSetSlotDescriptor(state->slot, RelationGetDescr(chunkrel));
 ExecStoreTuple(tuple, state->slot, InvalidBuffer, 1);

 if (((void*)0) != existing_slot)
  *existing_slot = state->slot;

 return tuple;
}
