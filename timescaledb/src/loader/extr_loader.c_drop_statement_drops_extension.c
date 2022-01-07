
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ removeType; int * objects; } ;
typedef int List ;
typedef TYPE_1__ DropStmt ;


 int Assert (int) ;
 int EXTENSION_NAME ;
 scalar_t__ OBJECT_EXTENSION ;
 int extension_exists () ;
 void* linitial (int *) ;
 int list_length (int *) ;
 char* strVal (void*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static bool
drop_statement_drops_extension(DropStmt *stmt)
{
 if (!extension_exists())
  return 0;

 if (stmt->removeType == OBJECT_EXTENSION)
 {
  if (list_length(stmt->objects) == 1)
  {
   char *ext_name;






   void *name = linitial(stmt->objects);

   ext_name = strVal(name);

   if (strcmp(ext_name, EXTENSION_NAME) == 0)
    return 1;
  }
 }
 return 0;
}
