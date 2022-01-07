
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int tuple; int scanrel; int desc; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_7__ {int table_id; } ;
typedef int Oid ;
typedef int Datum ;
typedef TYPE_2__ Chunk ;


 int Anum_chunk_constraint_chunk_id ;
 int Anum_chunk_constraint_constraint_name ;
 int DatumGetInt32 (int ) ;
 int * DatumGetName (int ) ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int get_constraint_index (int ) ;
 int get_relation_constraint_oid (int ,int ,int) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int ts_catalog_delete (int ,int ) ;
 TYPE_2__* ts_chunk_get_by_id (int ,int ,int) ;
 int ts_chunk_index_delete (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
chunk_constraint_delete_metadata(TupleInfo *ti)
{
 bool isnull;
 Datum constrname =
  heap_getattr(ti->tuple, Anum_chunk_constraint_constraint_name, ti->desc, &isnull);
 int32 chunk_id =
  DatumGetInt32(heap_getattr(ti->tuple, Anum_chunk_constraint_chunk_id, ti->desc, &isnull));
 Chunk *chunk = ts_chunk_get_by_id(chunk_id, 0, 1);
 Oid index_relid = get_constraint_index(
  get_relation_constraint_oid(chunk->table_id, NameStr(*DatumGetName(constrname)), 1));






 if (OidIsValid(index_relid))
  ts_chunk_index_delete(chunk, index_relid, 0);

 ts_catalog_delete(ti->scanrel, ti->tuple);
}
