
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_2__ BgwJob ;


 int CommitTransactionCommand () ;
 int ERROR ;
 int IsTransactionOrTransactionBlock () ;
 int StartTransactionCommand () ;
 int continuous_agg_materialize (scalar_t__,int) ;
 int elog (int ,char*,int ) ;
 int enable_fast_restart (TYPE_2__*,char*) ;
 scalar_t__ ts_continuous_agg_job_find_materializtion_by_job_id (int ) ;

__attribute__((used)) static bool
execute_materialize_continuous_aggregate(BgwJob *job)
{
 bool started = 0;
 int32 materialization_id;
 bool finshed_all_materialization;

 if (!IsTransactionOrTransactionBlock())
 {
  started = 1;
  StartTransactionCommand();
 }

 materialization_id = ts_continuous_agg_job_find_materializtion_by_job_id(job->fd.id);
 if (materialization_id < 0)
  elog(ERROR, "cannot find continuous aggregate for job %d", job->fd.id);

 CommitTransactionCommand();


 finshed_all_materialization = continuous_agg_materialize(materialization_id, 1);

 StartTransactionCommand();

 if (!finshed_all_materialization)
  enable_fast_restart(job, "materialize continuous aggregate");

 if (started)
  CommitTransactionCommand();

 return 1;
}
