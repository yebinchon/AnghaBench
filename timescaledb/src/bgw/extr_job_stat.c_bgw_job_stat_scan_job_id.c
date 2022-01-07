
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple_found_func ;
typedef int tuple_filter_func ;
typedef int int32 ;
typedef int ScanKeyData ;
typedef int LOCKMODE ;


 int Anum_bgw_job_stat_pkey_idx_job_id ;
 int BGW_JOB_STAT_PKEY_IDX ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int bgw_job_stat_scan_one (int ,int *,int,int ,int ,void*,int ) ;

__attribute__((used)) static inline bool
bgw_job_stat_scan_job_id(int32 bgw_job_id, tuple_found_func tuple_found,
       tuple_filter_func tuple_filter, void *data, LOCKMODE lockmode)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_bgw_job_stat_pkey_idx_job_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(bgw_job_id));
 return bgw_job_stat_scan_one(BGW_JOB_STAT_PKEY_IDX,
         scankey,
         1,
         tuple_found,
         tuple_filter,
         data,
         lockmode);
}
