
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;
typedef int Oid ;


 int InvalidOid ;
 scalar_t__ OidIsValid (int ) ;
 int RelationGetRelid (int ) ;
 int chunk_index_insert (int ,int ,int ,int ) ;
 int chunk_relation_index_create (int ,int ,int ,int,int ) ;
 int get_rel_name (int ) ;

__attribute__((used)) static void
chunk_index_create(Relation hypertable_rel, int32 hypertable_id, Relation hypertable_idxrel,
       int32 chunk_id, Relation chunkrel, Oid constraint_oid)
{
 Oid chunk_indexrelid;

 if (OidIsValid(constraint_oid))
 {




  return;
 }

 chunk_indexrelid =
  chunk_relation_index_create(hypertable_rel, hypertable_idxrel, chunkrel, 0, InvalidOid);

 chunk_index_insert(chunk_id,
        get_rel_name(chunk_indexrelid),
        hypertable_id,
        get_rel_name(RelationGetRelid(hypertable_idxrel)));
}
