
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int schema_name; } ;
struct TYPE_7__ {TYPE_1__* tables; } ;
struct TYPE_6__ {scalar_t__ id; } ;
typedef scalar_t__ Oid ;
typedef int CatalogTable ;
typedef TYPE_2__ Catalog ;


 int INVALID_CATALOG_TABLE ;
 unsigned int _MAX_CATALOG_TABLES ;
 int catalog_is_valid (TYPE_2__*) ;
 int catalog_table_name (unsigned int) ;
 TYPE_3__* catalog_table_names ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (scalar_t__) ;
 int get_rel_namespace (scalar_t__) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static CatalogTable
catalog_get_table(Catalog *catalog, Oid relid)
{
 unsigned int i;

 if (!catalog_is_valid(catalog))
 {
  const char *schema_name = get_namespace_name(get_rel_namespace(relid));
  const char *relname = get_rel_name(relid);

  for (i = 0; i < _MAX_CATALOG_TABLES; i++)
   if (strcmp(catalog_table_names[i].schema_name, schema_name) == 0 &&
    strcmp(catalog_table_name(i), relname) == 0)
    return (CatalogTable) i;

  return INVALID_CATALOG_TABLE;
 }

 for (i = 0; i < _MAX_CATALOG_TABLES; i++)
  if (catalog->tables[i].id == relid)
   return (CatalogTable) i;

 return INVALID_CATALOG_TABLE;
}
