
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;
typedef int Oid ;
typedef int IndexInfo ;


 int RelationGetRelid (int ) ;
 int chunk_index_insert (int ,int ,int ,int ) ;
 int get_rel_name (int ) ;
 int ts_chunk_index_create_post_adjustment (int ,int ,int ,int *,int,int) ;

void
ts_chunk_index_create_from_adjusted_index_info(int32 hypertable_id, Relation hypertable_idxrel,
              int32 chunk_id, Relation chunkrel,
              IndexInfo *indexinfo)
{
 Oid chunk_indexrelid = ts_chunk_index_create_post_adjustment(hypertable_id,
                 hypertable_idxrel,
                 chunkrel,
                 indexinfo,
                 0,
                 0);

 chunk_index_insert(chunk_id,
        get_rel_name(chunk_indexrelid),
        hypertable_id,
        get_rel_name(RelationGetRelid(hypertable_idxrel)));
}
