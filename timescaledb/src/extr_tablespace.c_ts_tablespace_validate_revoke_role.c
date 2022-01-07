
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GrantRoleStmt ;


 int revoke_role_tuple_found ;
 int tablespace_validate_revoke_internal (int *,int ,int *) ;

void
ts_tablespace_validate_revoke_role(GrantRoleStmt *stmt)
{
 tablespace_validate_revoke_internal(((void*)0), revoke_role_tuple_found, stmt);
}
