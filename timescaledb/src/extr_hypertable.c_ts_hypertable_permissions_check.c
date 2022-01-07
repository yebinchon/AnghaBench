
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_rel_name (int ) ;
 int has_privs_of_role (int ,int ) ;
 int ts_rel_get_owner (int ) ;

Oid
ts_hypertable_permissions_check(Oid hypertable_oid, Oid userid)
{
 Oid ownerid = ts_rel_get_owner(hypertable_oid);

 if (!has_privs_of_role(userid, ownerid))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be owner of hypertable \"%s\"", get_rel_name(hypertable_oid))));

 return ownerid;
}
