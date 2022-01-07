
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int MemoryContext ;
typedef int BgwJob ;


 int RowShareLock ;
 int TXN_LOCK ;
 int pfree (int *) ;
 int * ts_bgw_job_find_with_lock (int ,int ,int ,int ,int) ;

bool
ts_bgw_job_get_share_lock(int32 bgw_job_id, MemoryContext mctx)
{

 BgwJob *job = ts_bgw_job_find_with_lock(bgw_job_id, mctx, RowShareLock, TXN_LOCK, 1);
 if (job != ((void*)0))
 {
  pfree(job);
  return 1;
 }
 return 0;
}
