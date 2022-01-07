
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objects; } ;
typedef TYPE_1__ GrantStmt ;


 int linitial (int ) ;
 int revoke_tuple_found ;
 int strVal (int ) ;
 int tablespace_validate_revoke_internal (int ,int ,TYPE_1__*) ;

void
ts_tablespace_validate_revoke(GrantStmt *stmt)
{
 tablespace_validate_revoke_internal(strVal(linitial(stmt->objects)), revoke_tuple_found, stmt);
}
