
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {char const* oldname; char const* newname; } ;
typedef int ScanKeyData ;
typedef int Oid ;
typedef TYPE_2__ ChunkIndexRenameInfo ;
typedef TYPE_3__ Chunk ;


 int Anum_chunk_index_chunk_id_index_name_idx_chunk_id ;
 int Anum_chunk_index_chunk_id_index_name_idx_index_name ;
 int BTEqualStrategyNumber ;
 int CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX ;
 int CStringGetDatum (char const*) ;
 int F_INT4EQ ;
 int F_NAMEEQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int chunk_index_scan_update (int ,int *,int,int ,int *,TYPE_2__*) ;
 int chunk_index_tuple_rename ;
 char* get_rel_name (int ) ;

int
ts_chunk_index_rename(Chunk *chunk, Oid chunk_indexrelid, const char *newname)
{
 ScanKeyData scankey[2];
 const char *indexname = get_rel_name(chunk_indexrelid);
 ChunkIndexRenameInfo renameinfo = {
  .oldname = indexname,
  .newname = newname,
 };

 ScanKeyInit(&scankey[0],
    Anum_chunk_index_chunk_id_index_name_idx_chunk_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(chunk->fd.id));
 ScanKeyInit(&scankey[1],
    Anum_chunk_index_chunk_id_index_name_idx_index_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    CStringGetDatum(indexname));

 return chunk_index_scan_update(CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX,
           scankey,
           2,
           chunk_index_tuple_rename,
           ((void*)0),
           &renameinfo);
}
