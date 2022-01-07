
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent_indexoid; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ChunkIndexMapping ;
typedef int Chunk ;


 int AccessShareLock ;
 int NoLock ;
 int OidIsValid (int ) ;
 int chunk_relation_index_create (int ,int ,int ,int ,int ) ;
 int get_index_constraint (int ) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int ts_chunk_index_get_by_indexrelid (int *,int ,TYPE_1__*) ;

__attribute__((used)) static Oid
chunk_index_duplicate_index(Relation hypertable_rel, Chunk *src_chunk, Oid chunk_index_oid,
       Relation dest_chunk_rel, Oid index_tablespace)
{
 Relation chunk_index_rel = relation_open(chunk_index_oid, AccessShareLock);
 ChunkIndexMapping cim;
 Oid constraint_oid;
 Oid new_chunk_indexrelid;

 ts_chunk_index_get_by_indexrelid(src_chunk, chunk_index_oid, &cim);

 constraint_oid = get_index_constraint(cim.parent_indexoid);

 new_chunk_indexrelid = chunk_relation_index_create(hypertable_rel,
                chunk_index_rel,
                dest_chunk_rel,
                OidIsValid(constraint_oid),
                index_tablespace);

 relation_close(chunk_index_rel, NoLock);
 return new_chunk_indexrelid;
}
