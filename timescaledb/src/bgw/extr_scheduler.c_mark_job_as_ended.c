
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int may_need_mark_end; int job; } ;
typedef TYPE_1__ ScheduledBgwJob ;
typedef int JobResult ;


 int Assert (int) ;
 int ts_bgw_job_stat_mark_end (int *,int ) ;

__attribute__((used)) static void
mark_job_as_ended(ScheduledBgwJob *sjob, JobResult res)
{
 Assert(sjob->may_need_mark_end);
 ts_bgw_job_stat_mark_end(&sjob->job, res);
 sjob->may_need_mark_end = 0;
}
