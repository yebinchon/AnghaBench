
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int drop_index; } ;
typedef int ScanKeyData ;
typedef TYPE_1__ ChunkIndexDeleteData ;


 int Anum_chunk_index_chunk_id_index_name_idx_chunk_id ;
 int BTEqualStrategyNumber ;
 int CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int chunk_index_scan_update (int ,int *,int,int ,int *,TYPE_1__*) ;
 int chunk_index_tuple_delete ;

int
ts_chunk_index_delete_by_chunk_id(int32 chunk_id, bool drop_index)
{
 ScanKeyData scankey[1];
 ChunkIndexDeleteData data = {
  .drop_index = drop_index,
 };

 ScanKeyInit(&scankey[0],
    Anum_chunk_index_chunk_id_index_name_idx_chunk_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(chunk_id));

 return chunk_index_scan_update(CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX,
           scankey,
           1,
           chunk_index_tuple_delete,
           ((void*)0),
           &data);
}
