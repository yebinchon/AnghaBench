
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_finish; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef TYPE_2__ BgwJobStat ;


 int TIMESTAMP_IS_NOBEGIN (int ) ;

bool
ts_bgw_job_stat_end_was_marked(BgwJobStat *jobstat)
{
 return !TIMESTAMP_IS_NOBEGIN(jobstat->fd.last_finish);
}
