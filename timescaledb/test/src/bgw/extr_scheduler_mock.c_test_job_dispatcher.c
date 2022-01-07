
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int job_type; int application_name; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef int Interval ;
typedef TYPE_2__ BgwJob ;


 int CommitTransactionCommand () ;
 int * DatumGetIntervalP (int ) ;
 int DirectFunctionCall7 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ERROR ;
 int Float8GetDatum (double) ;
 int Int32GetDatum (int ) ;
 int NameStr (int ) ;
 int StartTransactionCommand () ;







 int elog (int ,char*,int ,int) ;
 int get_test_job_type_from_name (int *) ;
 int make_interval ;
 int strdup (int ) ;
 int test_job_1 () ;
 int test_job_2_error () ;
 int test_job_3_long () ;
 int test_job_4 ;
 int test_job_5_lock () ;
 int test_job_6_lock_notxn () ;
 int ts_bgw_job_run_and_set_next_start (TYPE_2__*,int ,int,int *) ;
 int ts_bgw_log_set_application_name (int ) ;
 int ts_params_get () ;
 int ts_register_emit_log_hook () ;

__attribute__((used)) static bool
test_job_dispatcher(BgwJob *job)
{
 ts_register_emit_log_hook();
 ts_bgw_log_set_application_name(strdup(NameStr(job->fd.application_name)));

 StartTransactionCommand();
 ts_params_get();
 CommitTransactionCommand();

 switch (get_test_job_type_from_name(&job->fd.job_type))
 {
  case 134:
   return test_job_1();
  case 133:
   return test_job_2_error();
  case 132:
   return test_job_3_long();
  case 131:
  {

   Interval *new_interval = DatumGetIntervalP(DirectFunctionCall7(make_interval,
                     Int32GetDatum(0),
                     Int32GetDatum(0),
                     Int32GetDatum(0),
                     Int32GetDatum(0),
                     Int32GetDatum(0),
                     Int32GetDatum(0),
                     Float8GetDatum(0.2)));

   return ts_bgw_job_run_and_set_next_start(job, test_job_4, 3, new_interval);
  }
  case 130:
   return test_job_5_lock();
  case 129:
   return test_job_6_lock_notxn();
  case 128:
   elog(ERROR,
     "unrecognized test job type: %s %d",
     NameStr(job->fd.job_type),
     get_test_job_type_from_name(&job->fd.job_type));
 }
 return 0;
}
