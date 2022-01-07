
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int newname; } ;
typedef TYPE_1__ RenameStmt ;
typedef int Oid ;


 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int ts_continuous_agg_rename_view (char*,char*,char*,int ) ;

__attribute__((used)) static void
process_rename_view(Oid relid, RenameStmt *stmt)
{
 char *schema = get_namespace_name(get_rel_namespace(relid));
 char *name = get_rel_name(relid);
 ts_continuous_agg_rename_view(schema, name, schema, stmt->newname);
}
