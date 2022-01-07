
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subtype; int * name; } ;
typedef int Oid ;
typedef int Hypertable ;
typedef TYPE_1__ AlterTableCmd ;


 int AT_ValidateConstraint ;
 int AlterTableInternal (int ,int ,int) ;
 TYPE_1__* copyObject (TYPE_1__*) ;
 int list_make1 (TYPE_1__*) ;
 int * ts_chunk_constraint_get_name_from_hypertable_constraint (int ,int *) ;

__attribute__((used)) static void
validate_hypertable_constraint(Hypertable *ht, Oid chunk_relid, void *arg)
{
 AlterTableCmd *cmd = (AlterTableCmd *) arg;
 AlterTableCmd *chunk_cmd = copyObject(cmd);

 chunk_cmd->name =
  ts_chunk_constraint_get_name_from_hypertable_constraint(chunk_relid, cmd->name);

 if (chunk_cmd->name == ((void*)0))
  return;


 chunk_cmd->subtype = AT_ValidateConstraint;
 AlterTableInternal(chunk_relid, list_make1(chunk_cmd), 0);
}
