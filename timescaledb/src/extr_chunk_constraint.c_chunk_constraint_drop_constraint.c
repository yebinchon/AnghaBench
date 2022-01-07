
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_9__ {int table_id; } ;
struct TYPE_8__ {int objectId; int classId; } ;
typedef TYPE_2__ ObjectAddress ;
typedef int Datum ;
typedef TYPE_3__ Chunk ;


 int Anum_chunk_constraint_chunk_id ;
 int Anum_chunk_constraint_constraint_name ;
 int ConstraintRelationId ;
 int DROP_RESTRICT ;
 int DatumGetInt32 (int ) ;
 int * DatumGetName (int ) ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int get_relation_constraint_oid (int ,int ,int) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int performDeletion (TYPE_2__*,int ,int ) ;
 TYPE_3__* ts_chunk_get_by_id (int ,int ,int) ;

__attribute__((used)) static void
chunk_constraint_drop_constraint(TupleInfo *ti)
{
 bool isnull;
 Datum constrname =
  heap_getattr(ti->tuple, Anum_chunk_constraint_constraint_name, ti->desc, &isnull);
 int32 chunk_id =
  DatumGetInt32(heap_getattr(ti->tuple, Anum_chunk_constraint_chunk_id, ti->desc, &isnull));
 Chunk *chunk = ts_chunk_get_by_id(chunk_id, 0, 1);
 ObjectAddress constrobj = {
  .classId = ConstraintRelationId,
  .objectId =
   get_relation_constraint_oid(chunk->table_id, NameStr(*DatumGetName(constrname)), 1),
 };

 if (OidIsValid(constrobj.objectId))
  performDeletion(&constrobj, DROP_RESTRICT, 0);
}
