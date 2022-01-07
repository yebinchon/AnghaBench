
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int CHUNK_DML_BLOCKER_NAME ;
 int DROP_RESTRICT ;
 scalar_t__ OidIsValid (int ) ;
 int TriggerRelationId ;
 int get_trigger_oid (int ,int ,int) ;
 int performDeletion (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
chunk_dml_trigger_drop(Oid relid)
{
 if (OidIsValid(relid))
 {
  ObjectAddress objaddr = {
   .classId = TriggerRelationId,
   .objectId = get_trigger_oid(relid, CHUNK_DML_BLOCKER_NAME, 1),
  };
  if (OidIsValid(objaddr.objectId))
   performDeletion(&objaddr, DROP_RESTRICT, 0);
 }
}
