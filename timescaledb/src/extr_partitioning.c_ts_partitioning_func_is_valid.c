
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regproc ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Form_pg_proc ;
typedef int DimensionType ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int IS_VALID_PARTITIONING_FUNC (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_func_name (int ) ;
 scalar_t__ pg_proc_aclcheck (int ,int ,int ) ;

bool
ts_partitioning_func_is_valid(regproc funcoid, DimensionType dimtype, Oid argtype)
{
 HeapTuple tuple;
 bool isvalid;
 AclResult aclresult;

 tuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcoid));

 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for function %u", funcoid);

 aclresult = pg_proc_aclcheck(funcoid, GetUserId(), ACL_EXECUTE);
 if (aclresult != ACLCHECK_OK)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied for function %s", get_func_name(funcoid))));

 isvalid = IS_VALID_PARTITIONING_FUNC((Form_pg_proc) GETSTRUCT(tuple), dimtype, argtype);

 ReleaseSysCache(tuple);

 return isvalid;
}
