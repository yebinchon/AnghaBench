
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int behavior; } ;
typedef TYPE_1__ TruncateStmt ;
struct TYPE_5__ {int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int Hypertable ;


 int RelationRelationId ;
 int performDeletion (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
process_truncate_chunk(Hypertable *ht, Oid chunk_relid, void *arg)
{
 TruncateStmt *stmt = arg;
 ObjectAddress objaddr = {
  .classId = RelationRelationId,
  .objectId = chunk_relid,
 };

 performDeletion(&objaddr, stmt->behavior, 0);
}
