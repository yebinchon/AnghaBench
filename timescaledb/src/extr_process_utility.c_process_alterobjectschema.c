
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int objectType; } ;
struct TYPE_6__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef TYPE_2__ AlterObjectSchemaStmt ;




 int process_altertableschema (TYPE_1__*) ;
 int process_alterviewschema (TYPE_1__*) ;

__attribute__((used)) static void
process_alterobjectschema(ProcessUtilityArgs *args)
{
 AlterObjectSchemaStmt *alterstmt = (AlterObjectSchemaStmt *) args->parsetree;

 switch (alterstmt->objectType)
 {
  case 129:
   process_altertableschema(args);
   break;
  case 128:
   process_alterviewschema(args);
   break;
  default:
   return;
 };
}
