
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int constraint_name; } ;
struct TYPE_9__ {TYPE_1__ fd; } ;
struct TYPE_8__ {int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef TYPE_3__ ChunkConstraint ;


 int ConstraintRelationId ;
 int DROP_RESTRICT ;
 int NameStr (int ) ;
 int chunk_constraint_create_on_table (TYPE_3__*,int ) ;
 int get_relation_constraint_oid (int ,int ,int) ;
 int performDeletion (TYPE_2__*,int ,int ) ;

void
ts_chunk_constraint_recreate(ChunkConstraint *cc, Oid chunk_oid)
{
 ObjectAddress constrobj = {
  .classId = ConstraintRelationId,
  .objectId = get_relation_constraint_oid(chunk_oid, NameStr(cc->fd.constraint_name), 0),
 };

 performDeletion(&constrobj, DROP_RESTRICT, 0);
 chunk_constraint_create_on_table(cc, chunk_oid);
}
