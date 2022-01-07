
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;
typedef int BgwPolicyChunkStats ;


 int AccessShareLock ;
 int Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_chunk_id ;
 int Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id ;
 int BGW_POLICY_CHUNK_STATS ;
 int BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX ;
 int BGW_POLICY_CHUNK_STATS_TABLE_NAME ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int bgw_policy_chunk_stats_tuple_found ;
 int ts_catalog_scan_one (int ,int ,int *,int,int ,int ,int ,int **) ;

BgwPolicyChunkStats *
ts_bgw_policy_chunk_stats_find(int32 job_id, int32 chunk_id)
{
 ScanKeyData scankeys[2];
 BgwPolicyChunkStats *stats = ((void*)0);

 ScanKeyInit(&scankeys[0],
    Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(job_id));
 ScanKeyInit(&scankeys[1],
    Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_chunk_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(chunk_id));

 ts_catalog_scan_one(BGW_POLICY_CHUNK_STATS,
      BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX,
      scankeys,
      2,
      bgw_policy_chunk_stats_tuple_found,
      AccessShareLock,
      BGW_POLICY_CHUNK_STATS_TABLE_NAME,
      &stats);
 return stats;
}
