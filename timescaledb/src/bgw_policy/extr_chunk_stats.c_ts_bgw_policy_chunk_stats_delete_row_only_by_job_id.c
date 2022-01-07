
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;


 int Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id ;
 int BGW_POLICY_CHUNK_STATS ;
 int BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ts_bgw_policy_delete_row_only_tuple_found ;
 int ts_catalog_scan_all (int ,int ,int *,int,int ,int ,int *) ;

void
ts_bgw_policy_chunk_stats_delete_row_only_by_job_id(int32 job_id)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(job_id));

 ts_catalog_scan_all(BGW_POLICY_CHUNK_STATS,
      BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX,
      scankey,
      1,
      ts_bgw_policy_delete_row_only_tuple_found,
      RowExclusiveLock,
      ((void*)0));
}
