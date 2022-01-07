
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;
typedef int BgwPolicyReorder ;


 int AccessShareLock ;
 int Anum_bgw_policy_reorder_pkey_idx_job_id ;
 int BGW_POLICY_REORDER ;
 int BGW_POLICY_REORDER_PKEY_IDX ;
 int BGW_POLICY_REORDER_TABLE_NAME ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int bgw_policy_reorder_tuple_found ;
 int ts_catalog_scan_one (int ,int ,int *,int,int ,int ,int ,void*) ;

BgwPolicyReorder *
ts_bgw_policy_reorder_find_by_job(int32 job_id)
{
 ScanKeyData scankey[1];
 BgwPolicyReorder *ret = ((void*)0);

 ScanKeyInit(&scankey[0],
    Anum_bgw_policy_reorder_pkey_idx_job_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(job_id));

 ts_catalog_scan_one(BGW_POLICY_REORDER,
      BGW_POLICY_REORDER_PKEY_IDX,
      scankey,
      1,
      bgw_policy_reorder_tuple_found,
      AccessShareLock,
      BGW_POLICY_REORDER_TABLE_NAME,
      (void *) &ret);

 return ret;
}
