
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ) ;
 int get_rel_name (int ) ;
 int get_tablespace_name (int ) ;
 scalar_t__ pg_tablespace_aclcheck (int ,int ,int ) ;

__attribute__((used)) static void
validate_revoke_create(Oid tspcoid, Oid role, Oid relid)
{
 AclResult aclresult = pg_tablespace_aclcheck(tspcoid, role, ACL_CREATE);

 if (aclresult != ACLCHECK_OK)
  ereport(ERROR,
    (errcode(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
     errmsg("cannot revoke privilege while tablespace \"%s\" is attached to hypertable "
      "\"%s\"",
      get_tablespace_name(tspcoid),
      get_rel_name(relid)),
     errhint("Detach the tablespace before revoking the privilege on it.")));
}
