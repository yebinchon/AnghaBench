
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
struct TYPE_7__ {int may_need_mark_end; TYPE_2__ job; } ;
typedef TYPE_3__ ScheduledBgwJob ;


 int Assert (int) ;
 int ts_bgw_job_stat_mark_start (int ) ;

__attribute__((used)) static void
mark_job_as_started(ScheduledBgwJob *sjob)
{
 Assert(!sjob->may_need_mark_end);
 ts_bgw_job_stat_mark_start(sjob->job.fd.id);
 sjob->may_need_mark_end = 1;
}
