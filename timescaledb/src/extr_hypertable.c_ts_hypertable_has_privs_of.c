
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int has_privs_of_role (int ,int ) ;
 int ts_rel_get_owner (int ) ;

bool
ts_hypertable_has_privs_of(Oid hypertable_oid, Oid userid)
{
 return has_privs_of_role(userid, ts_rel_get_owner(hypertable_oid));
}
