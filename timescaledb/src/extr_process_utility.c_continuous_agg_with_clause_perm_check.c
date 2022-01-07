
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ContinuousAgg ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int GetUserId () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_rel_name (int ) ;
 int has_privs_of_role (int ,int ) ;
 int ts_rel_get_owner (int ) ;

__attribute__((used)) static void
continuous_agg_with_clause_perm_check(ContinuousAgg *cagg, Oid view_relid)
{
 Oid ownerid = ts_rel_get_owner(view_relid);

 if (!has_privs_of_role(GetUserId(), ownerid))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be owner of continuous aggregate \"%s\"", get_rel_name(view_relid))));
}
