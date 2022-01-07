
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int Assert (int ) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int INTERNAL_SCHEMA_NAME ;
 int InvalidOid ;
 int MyDatabaseId ;
 int NAMEDATALEN ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int get_database_name (int ) ;
 int get_namespace_oid (char const*,int) ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 scalar_t__ pg_namespace_aclcheck (int ,int ,int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static Oid
hypertable_check_associated_schema_permissions(const char *schema_name, Oid user_oid)
{
 Oid schema_oid;





 if (((void*)0) == schema_name)
  return InvalidOid;

 schema_oid = get_namespace_oid(schema_name, 1);


 if (strncmp(schema_name, INTERNAL_SCHEMA_NAME, NAMEDATALEN) == 0)
 {
  Assert(OidIsValid(schema_oid));
  return schema_oid;
 }

 if (!OidIsValid(schema_oid))
 {




  if (pg_database_aclcheck(MyDatabaseId, user_oid, ACL_CREATE) != ACLCHECK_OK)
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permissions denied: cannot create schema \"%s\" in database \"%s\"",
       schema_name,
       get_database_name(MyDatabaseId))));
 }
 else if (pg_namespace_aclcheck(schema_oid, user_oid, ACL_CREATE) != ACLCHECK_OK)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permissions denied: cannot create chunks in schema \"%s\"", schema_name)));

 return schema_oid;
}
