
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relkind; } ;
typedef int Node ;
typedef int CollectedCommand ;
typedef TYPE_1__ AlterTableStmt ;




 int process_altertable_end_index (int *,int *) ;
 int process_altertable_end_table (int *,int *) ;

__attribute__((used)) static void
process_altertable_end(Node *parsetree, CollectedCommand *cmd)
{
 AlterTableStmt *stmt = (AlterTableStmt *) parsetree;

 switch (stmt->relkind)
 {
  case 128:
   process_altertable_end_table(parsetree, cmd);
   break;
  case 129:
   process_altertable_end_index(parsetree, cmd);
   break;
  default:
   break;
 }
}
