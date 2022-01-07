
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jobs_list_needs_update ;

void
ts_bgw_job_cache_invalidate_callback()
{
 jobs_list_needs_update = 1;
}
