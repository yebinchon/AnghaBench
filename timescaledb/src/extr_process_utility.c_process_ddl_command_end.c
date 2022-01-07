
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parsetree; } ;
typedef TYPE_1__ CollectedCommand ;




 int nodeTag (int ) ;
 int process_altertable_end (int ,TYPE_1__*) ;
 int process_create_table_end (int ) ;

__attribute__((used)) static void
process_ddl_command_end(CollectedCommand *cmd)
{
 switch (nodeTag(cmd->parsetree))
 {
  case 128:
   process_create_table_end(cmd->parsetree);
   break;
  case 129:
   process_altertable_end(cmd->parsetree, cmd);
   break;
  default:
   break;
 }
}
