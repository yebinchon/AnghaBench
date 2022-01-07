
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;






 int nodeTag (int *) ;
 int should_load_on_alter_extension (int *) ;
 int should_load_on_create_extension (int *) ;
 int should_load_on_drop_extension (int *) ;
 int should_load_on_variable_set (int *) ;

__attribute__((used)) static bool
load_utility_cmd(Node *utility_stmt)
{
 switch (nodeTag(utility_stmt))
 {
  case 128:
   return should_load_on_variable_set(utility_stmt);
  case 131:
   return should_load_on_alter_extension(utility_stmt);
  case 130:
   return should_load_on_create_extension(utility_stmt);
  case 129:
   return should_load_on_drop_extension(utility_stmt);
  default:
   return 1;
 }
}
