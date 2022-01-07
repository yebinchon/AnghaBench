
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tuple; int scanrel; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_11__ {scalar_t__ drop_index; } ;
struct TYPE_10__ {int index_name; } ;
struct TYPE_9__ {int objectId; int classId; } ;
typedef int ScanTupleResult ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef TYPE_3__ FormData_chunk_index ;
typedef TYPE_4__ ChunkIndexDeleteData ;


 int DROP_RESTRICT ;
 scalar_t__ GETSTRUCT (int ) ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RelationRelationId ;
 int SCAN_CONTINUE ;
 int chunk_index_get_schemaid (TYPE_3__*,int) ;
 int get_relname_relid (int ,int ) ;
 int performDeletion (TYPE_2__*,int ,int ) ;
 int ts_catalog_delete (int ,int ) ;

__attribute__((used)) static ScanTupleResult
chunk_index_tuple_delete(TupleInfo *ti, void *data)
{
 FormData_chunk_index *chunk_index = (FormData_chunk_index *) GETSTRUCT(ti->tuple);
 Oid schemaid = chunk_index_get_schemaid(chunk_index, 1);
 ChunkIndexDeleteData *cid = data;

 ts_catalog_delete(ti->scanrel, ti->tuple);

 if (cid->drop_index)
 {
  ObjectAddress idxobj = {
   .classId = RelationRelationId,
   .objectId = get_relname_relid(NameStr(chunk_index->index_name), schemaid),
  };

  if (OidIsValid(idxobj.objectId))
   performDeletion(&idxobj, DROP_RESTRICT, 0);
 }

 return SCAN_CONTINUE;
}
