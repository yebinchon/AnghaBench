
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int id; } ;
struct TYPE_11__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int last_start; } ;
struct TYPE_10__ {TYPE_2__ fd; } ;
typedef TYPE_3__ BgwJobStat ;
typedef TYPE_4__ BgwJob ;


 int LOG ;
 int elog (int ,char*,char const*) ;
 TYPE_3__* ts_bgw_job_stat_find (int ) ;
 int ts_bgw_job_stat_set_next_start (TYPE_4__*,int ) ;

__attribute__((used)) static void
enable_fast_restart(BgwJob *job, const char *job_name)
{
 BgwJobStat *job_stat = ts_bgw_job_stat_find(job->fd.id);

 ts_bgw_job_stat_set_next_start(job, job_stat->fd.last_start);
 elog(LOG, "the %s job is scheduled to run again immediately", job_name);
}
