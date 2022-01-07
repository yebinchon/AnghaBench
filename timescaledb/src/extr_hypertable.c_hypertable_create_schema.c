
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* schemaname; int if_not_exists; int schemaElts; int * authrole; } ;
typedef TYPE_1__ CreateSchemaStmt ;


 int CreateSchemaCommand (TYPE_1__*,char*,int,int) ;
 int NIL ;

__attribute__((used)) static void
hypertable_create_schema(const char *schema_name)
{
 CreateSchemaStmt stmt = {
  .schemaname = (char *) schema_name,
  .authrole = ((void*)0),
  .schemaElts = NIL,
  .if_not_exists = 1,
 };

 CreateSchemaCommand(&stmt,
      "(generated CREATE SCHEMA command)"

      ,
      -1,
      -1

 );
}
