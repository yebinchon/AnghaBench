
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int missing_ok; int subtype; int type; } ;
typedef int Oid ;
typedef TYPE_1__ AlterTableCmd ;


 int AT_SetNotNull ;
 int AlterTableInternal (int ,int ,int) ;
 int NOTICE ;
 int T_AlterTableCmd ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char*) ;
 int list_make1 (TYPE_1__*) ;

__attribute__((used)) static void
dimension_add_not_null_on_column(Oid table_relid, char *colname)
{
 AlterTableCmd cmd = {
  .type = T_AlterTableCmd,
  .subtype = AT_SetNotNull,
  .name = colname,
  .missing_ok = 0,
 };

 ereport(NOTICE,
   (errmsg("adding not-null constraint to column \"%s\"", colname),
    errdetail("Time dimensions cannot have NULL values")));

 AlterTableInternal(table_relid, list_make1(&cmd), 0);
}
