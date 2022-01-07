
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;


 int Anum_bgw_policy_compress_chunks_pkey_job_id ;
 int BGW_POLICY_COMPRESS_CHUNKS ;
 int BGW_POLICY_COMPRESS_CHUNKS_PKEY ;
 int BGW_POLICY_COMPRESS_CHUNKS_TABLE_NAME ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int compress_policy_delete_row_tuple_found ;
 int ts_catalog_scan_one (int ,int ,int *,int,int ,int ,int ,int *) ;

bool
ts_bgw_policy_compress_chunks_delete(int32 job_id)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_bgw_policy_compress_chunks_pkey_job_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(job_id));

 return ts_catalog_scan_one(BGW_POLICY_COMPRESS_CHUNKS,
          BGW_POLICY_COMPRESS_CHUNKS_PKEY,
          scankey,
          1,
          compress_policy_delete_row_tuple_found,
          RowExclusiveLock,
          BGW_POLICY_COMPRESS_CHUNKS_TABLE_NAME,
          ((void*)0));
}
