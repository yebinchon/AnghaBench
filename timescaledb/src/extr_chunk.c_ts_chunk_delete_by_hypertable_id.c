
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;
typedef int DropBehavior ;


 int Anum_chunk_hypertable_id_idx_hypertable_id ;
 int BTEqualStrategyNumber ;
 int CHUNK_HYPERTABLE_ID_INDEX ;
 int CurrentMemoryContext ;
 int DROP_RESTRICT ;
 int F_INT4EQ ;
 int ForwardScanDirection ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int chunk_scan_internal (int ,int *,int,int ,int *,int ,int ,int ,int ) ;
 int chunk_tuple_delete ;

int
ts_chunk_delete_by_hypertable_id(int32 hypertable_id)
{
 ScanKeyData scankey[1];
 DropBehavior behavior = DROP_RESTRICT;

 ScanKeyInit(&scankey[0],
    Anum_chunk_hypertable_id_idx_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 return chunk_scan_internal(CHUNK_HYPERTABLE_ID_INDEX,
          scankey,
          1,
          chunk_tuple_delete,
          &behavior,
          0,
          ForwardScanDirection,
          RowExclusiveLock,
          CurrentMemoryContext);
}
