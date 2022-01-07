
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;


 int Anum_bgw_policy_chunk_stats_chunk_id ;
 int BGW_POLICY_CHUNK_STATS ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int bgw_policy_chunk_stats_delete_via_job_tuple_found ;
 int ts_catalog_scan_all (int ,int ,int *,int,int ,int ,int *) ;

void
ts_bgw_policy_chunk_stats_delete_by_chunk_id(int32 chunk_id)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_bgw_policy_chunk_stats_chunk_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(chunk_id));

 ts_catalog_scan_all(BGW_POLICY_CHUNK_STATS,
      InvalidOid,
      scankey,
      1,
      bgw_policy_chunk_stats_delete_via_job_tuple_found,
      RowExclusiveLock,
      ((void*)0));
}
