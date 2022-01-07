
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
typedef int List ;
typedef TYPE_2__ Hypertable ;


 int AccessShareLock ;
 int Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_id ;
 int Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_index_name ;
 int BTEqualStrategyNumber ;
 int CHUNK_INDEX_HYPERTABLE_ID_HYPERTABLE_INDEX_NAME_IDX ;
 int CStringGetDatum (char const*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_INT4EQ ;
 int F_NAMEEQ ;
 int Int32GetDatum (int ) ;
 int * NIL ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int chunk_index_collect ;
 int chunk_index_scan (int ,int *,int,int ,int *,int **,int ) ;
 char* get_rel_name (int ) ;
 int namein ;

List *
ts_chunk_index_get_mappings(Hypertable *ht, Oid hypertable_indexrelid)
{
 ScanKeyData scankey[2];
 const char *indexname = get_rel_name(hypertable_indexrelid);
 List *mappings = NIL;

 ScanKeyInit(&scankey[0],
    Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(ht->fd.id));
 ScanKeyInit(&scankey[1],
    Anum_chunk_index_hypertable_id_hypertable_index_name_idx_hypertable_index_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum((indexname))));

 chunk_index_scan(CHUNK_INDEX_HYPERTABLE_ID_HYPERTABLE_INDEX_NAME_IDX,
      scankey,
      2,
      chunk_index_collect,
      ((void*)0),
      &mappings,
      AccessShareLock);

 return mappings;
}
