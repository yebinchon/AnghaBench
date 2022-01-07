
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;


 int BGW_JOB_STAT ;
 int DT_NOBEGIN ;
 int RowExclusiveLock ;
 int ShareRowExclusiveLock ;
 int bgw_job_stat_insert_relation (int ,int ,int,int ) ;
 int bgw_job_stat_scan_job_id (int ,int ,int *,int *,int ) ;
 int bgw_job_stat_tuple_mark_start ;
 int catalog_get_table_id (int ,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int ts_catalog_get () ;

void
ts_bgw_job_stat_mark_start(int32 bgw_job_id)
{

 if (!bgw_job_stat_scan_job_id(bgw_job_id,
          bgw_job_stat_tuple_mark_start,
          ((void*)0),
          ((void*)0),
          RowExclusiveLock))
 {
  Relation rel =
   heap_open(catalog_get_table_id(ts_catalog_get(), BGW_JOB_STAT), ShareRowExclusiveLock);

  if (!bgw_job_stat_scan_job_id(bgw_job_id,
           bgw_job_stat_tuple_mark_start,
           ((void*)0),
           ((void*)0),
           RowExclusiveLock))
   bgw_job_stat_insert_relation(rel, bgw_job_id, 1, DT_NOBEGIN);
  heap_close(rel, ShareRowExclusiveLock);
 }
}
