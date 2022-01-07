
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ objectType; int newschema; int * relation; } ;
struct TYPE_4__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef int Oid ;
typedef TYPE_2__ AlterObjectSchemaStmt ;


 int Assert (int) ;
 int NoLock ;
 scalar_t__ OBJECT_VIEW ;
 int OidIsValid (int ) ;
 int RangeVarGetRelid (int *,int ,int) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int ts_continuous_agg_rename_view (char*,char*,int ,char*) ;

__attribute__((used)) static void
process_alterviewschema(ProcessUtilityArgs *args)
{
 AlterObjectSchemaStmt *alterstmt = (AlterObjectSchemaStmt *) args->parsetree;
 Oid relid;
 char *schema;
 char *name;

 Assert(alterstmt->objectType == OBJECT_VIEW);

 if (((void*)0) == alterstmt->relation)
  return;

 relid = RangeVarGetRelid(alterstmt->relation, NoLock, 1);
 if (!OidIsValid(relid))
  return;

 schema = get_namespace_name(get_rel_namespace(relid));
 name = get_rel_name(relid);

 ts_continuous_agg_rename_view(schema, name, alterstmt->newschema, name);
}
