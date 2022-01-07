
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ is_grant; } ;
struct TYPE_6__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef TYPE_2__ GrantRoleStmt ;


 int prev_ProcessUtility (TYPE_1__*) ;
 int ts_tablespace_validate_revoke_role (TYPE_2__*) ;

__attribute__((used)) static bool
process_grant_and_revoke_role(ProcessUtilityArgs *args)
{
 GrantRoleStmt *stmt = (GrantRoleStmt *) args->parsetree;





 prev_ProcessUtility(args);


 if (stmt->is_grant)
  return 1;

 ts_tablespace_validate_revoke_role(stmt);

 return 1;
}
