
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kind; int * name; } ;
typedef TYPE_1__ VariableSetStmt ;
typedef int Node ;


 int GUC_DISABLE_LOAD_NAME ;



 int strcmp (int *,int ) ;

__attribute__((used)) static bool
should_load_on_variable_set(Node *utility_stmt)
{
 VariableSetStmt *stmt = (VariableSetStmt *) utility_stmt;

 switch (stmt->kind)
 {
  case 128:
  case 129:
  case 130:

   return stmt->name == ((void*)0) || strcmp(stmt->name, GUC_DISABLE_LOAD_NAME) != 0;
  default:
   return 1;
 }
}
