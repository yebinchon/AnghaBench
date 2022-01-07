
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ targtype; int objtype; scalar_t__ is_grant; } ;
struct TYPE_6__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef TYPE_2__ GrantStmt ;



 scalar_t__ ACL_TARGET_OBJECT ;

 int prev_ProcessUtility (TYPE_1__*) ;
 int ts_tablespace_validate_revoke (TYPE_2__*) ;

__attribute__((used)) static bool
process_grant_and_revoke(ProcessUtilityArgs *args)
{
 GrantStmt *stmt = (GrantStmt *) args->parsetree;





 prev_ProcessUtility(args);


 if (stmt->is_grant || stmt->targtype != ACL_TARGET_OBJECT)
  return 1;

 switch (stmt->objtype)
 {
  case 128:

   ts_tablespace_validate_revoke(stmt);
   break;
  default:
   break;
 }

 return 1;
}
