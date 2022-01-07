
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int relkind; } ;
struct TYPE_6__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef TYPE_2__ AlterTableStmt ;




 int process_altertable_start_table (TYPE_1__*) ;
 int process_altertable_start_view (TYPE_1__*) ;

__attribute__((used)) static bool
process_altertable_start(ProcessUtilityArgs *args)
{
 AlterTableStmt *stmt = (AlterTableStmt *) args->parsetree;
 switch (stmt->relkind)
 {
  case 129:
   return process_altertable_start_table(args);
  case 128:
   return process_altertable_start_view(args);
  default:
   return 0;
 }
}
