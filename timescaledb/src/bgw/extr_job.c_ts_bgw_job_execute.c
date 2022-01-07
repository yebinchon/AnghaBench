
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int (* bgw_policy_job_execute ) (TYPE_2__*) ;} ;
struct TYPE_8__ {int job_type; } ;
struct TYPE_9__ {int bgw_type; TYPE_1__ fd; } ;
typedef int Interval ;
typedef TYPE_2__ BgwJob ;


 int Assert (int) ;
 int * DatumGetIntervalP (int ) ;
 int DirectFunctionCall7 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ERROR ;
 int Float8GetDatum (int ) ;
 int Int32GetDatum (int) ;






 int NameStr (int ) ;
 int TELEMETRY_INITIAL_NUM_RUNS ;

 int elog (int ,char*,int ) ;
 int make_interval ;
 int pfree (int *) ;
 int stub1 (TYPE_2__*) ;
 int ts_bgw_job_run_and_set_next_start (TYPE_2__*,int ,int ,int *) ;
 TYPE_4__* ts_cm_functions ;
 int ts_telemetry_main_wrapper ;
 int unknown_job_type_hook (TYPE_2__*) ;

bool
ts_bgw_job_execute(BgwJob *job)
{
 switch (job->bgw_type)
 {
  case 129:
  {
   bool next_start_set;





   Interval *one_hour = DatumGetIntervalP(DirectFunctionCall7(make_interval,
                    Int32GetDatum(0),
                    Int32GetDatum(0),
                    Int32GetDatum(0),
                    Int32GetDatum(0),
                    Int32GetDatum(1),
                    Int32GetDatum(0),
                    Float8GetDatum(0)));

   next_start_set = ts_bgw_job_run_and_set_next_start(job,
                  ts_telemetry_main_wrapper,
                  TELEMETRY_INITIAL_NUM_RUNS,
                  one_hour);
   pfree(one_hour);
   return next_start_set;
  }
  case 131:
  case 132:
  case 133:
  case 134:
   return ts_cm_functions->bgw_policy_job_execute(job);
  case 130:
   if (unknown_job_type_hook != ((void*)0))
    return unknown_job_type_hook(job);
   elog(ERROR, "unknown job type \"%s\"", NameStr(job->fd.job_type));
   break;
  case 128:
   elog(ERROR, "unknown job type \"%s\"", NameStr(job->fd.job_type));
   break;
 }
 Assert(0);
 return 0;
}
