
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int ScanKeyData ;
typedef int Oid ;
typedef int ChunkIndexMapping ;
typedef TYPE_2__ Chunk ;


 int AccessShareLock ;
 int Anum_chunk_index_chunk_id_index_name_idx_chunk_id ;
 int Anum_chunk_index_chunk_id_index_name_idx_index_name ;
 int Assert (int ) ;
 int BTEqualStrategyNumber ;
 int CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX ;
 int CStringGetDatum (char const*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_INT4EQ ;
 int F_NAMEEQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int chunk_index_scan (int ,int *,int,int ,int *,int *,int ) ;
 int chunk_index_tuple_found ;
 char* get_rel_name (int ) ;
 int namein ;

bool
ts_chunk_index_get_by_indexrelid(Chunk *chunk, Oid chunk_indexrelid, ChunkIndexMapping *cim_out)
{
 int tuples_found;
 ScanKeyData scankey[2];
 const char *indexname = get_rel_name(chunk_indexrelid);

 Assert(cim_out != ((void*)0));

 ScanKeyInit(&scankey[0],
    Anum_chunk_index_chunk_id_index_name_idx_chunk_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(chunk->fd.id));
 ScanKeyInit(&scankey[1],
    Anum_chunk_index_chunk_id_index_name_idx_index_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(indexname)));

 tuples_found = chunk_index_scan(CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX,
         scankey,
         2,
         chunk_index_tuple_found,
         ((void*)0),
         cim_out,
         AccessShareLock);

 return tuples_found > 0;
}
