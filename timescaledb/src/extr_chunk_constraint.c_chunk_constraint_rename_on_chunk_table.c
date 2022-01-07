
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int table_name; int schema_name; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {char* subname; char* newname; int relation; int renameType; } ;
typedef TYPE_2__ RenameStmt ;
typedef TYPE_3__ Chunk ;


 int NameStr (int ) ;
 int OBJECT_TABCONSTRAINT ;
 int RenameConstraint (TYPE_2__*) ;
 int makeRangeVar (int ,int ,int ) ;
 TYPE_3__* ts_chunk_get_by_id (int ,int ,int) ;

__attribute__((used)) static void
chunk_constraint_rename_on_chunk_table(int32 chunk_id, char *old_name, char *new_name)
{
 Chunk *chunk = ts_chunk_get_by_id(chunk_id, 0, 1);
 RenameStmt rename = {
  .renameType = OBJECT_TABCONSTRAINT,
  .relation = makeRangeVar(NameStr(chunk->fd.schema_name), NameStr(chunk->fd.table_name), 0),
  .subname = old_name,
  .newname = new_name,
 };

 RenameConstraint(&rename);
}
