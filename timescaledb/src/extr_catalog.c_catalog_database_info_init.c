
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ schema_id; int owner_uid; int database_name; int database_id; } ;
typedef TYPE_1__ CatalogDatabaseInfo ;


 int CATALOG_SCHEMA_NAME ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int MyDatabaseId ;
 int NAMEDATALEN ;
 int StrNCpy (int ,int ,int ) ;
 int catalog_owner () ;
 int elog (int ,char*,int ) ;
 int get_database_name (int ) ;
 scalar_t__ get_namespace_oid (int ,int) ;

__attribute__((used)) static void
catalog_database_info_init(CatalogDatabaseInfo *info)
{
 info->database_id = MyDatabaseId;
 StrNCpy(info->database_name, get_database_name(MyDatabaseId), NAMEDATALEN);
 info->schema_id = get_namespace_oid(CATALOG_SCHEMA_NAME, 0);
 info->owner_uid = catalog_owner();

 if (info->schema_id == InvalidOid)
  elog(ERROR, "OID lookup failed for schema \"%s\"", CATALOG_SCHEMA_NAME);
}
