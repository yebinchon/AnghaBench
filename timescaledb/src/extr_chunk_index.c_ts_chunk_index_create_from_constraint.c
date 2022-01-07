
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;


 int Assert (int ) ;
 int OidIsValid (int ) ;
 int chunk_index_insert (int ,int ,int ,int ) ;
 int get_constraint_index (int ) ;
 int get_rel_name (int ) ;

void
ts_chunk_index_create_from_constraint(int32 hypertable_id, Oid hypertable_constraint,
           int32 chunk_id, Oid chunk_constraint)
{
 Oid chunk_indexrelid = get_constraint_index(chunk_constraint);
 Oid hypertable_indexrelid = get_constraint_index(hypertable_constraint);

 Assert(OidIsValid(chunk_indexrelid));
 Assert(OidIsValid(hypertable_indexrelid));

 chunk_index_insert(chunk_id,
        get_rel_name(chunk_indexrelid),
        hypertable_id,
        get_rel_name(hypertable_indexrelid));
}
