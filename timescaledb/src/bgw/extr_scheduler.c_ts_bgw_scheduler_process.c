
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_background_worker_callback_type ;
typedef int int32 ;
typedef scalar_t__ TimestampTz ;
typedef int MemoryContext ;


 int AcceptInvalidationMessages () ;
 int CHECK_FOR_INTERRUPTS () ;
 int CommitTransactionCommand () ;
 int CurrentMemoryContext ;
 int DEBUG1 ;
 scalar_t__ DT_NOEND ;
 int MyDatabaseId ;
 int PGC_SIGHUP ;
 int ProcDiePending ;
 int ProcessConfigFile (int ) ;
 int StartTransactionCommand () ;
 scalar_t__ TimestampTzPlusMilliseconds (scalar_t__,int ) ;
 int WARNING ;
 int check_for_stopped_and_timed_out_jobs () ;
 int earliest_job_timeout () ;
 int earliest_time_to_start_next_job () ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int got_SIGHUP ;
 int jobs_list_needs_update ;
 scalar_t__ least_timestamp (scalar_t__,int ) ;
 int scheduled_jobs ;
 int start_scheduled_jobs (int ) ;
 scalar_t__ ts_shutdown_bgw ;
 scalar_t__ ts_timer_get_current_timestamp () ;
 int ts_timer_wait (scalar_t__) ;
 int ts_update_scheduled_jobs_list (int ,int ) ;
 int wait_for_all_jobs_to_shutdown () ;

void
ts_bgw_scheduler_process(int32 run_for_interval_ms,
       register_background_worker_callback_type bgw_register)
{
 TimestampTz start = ts_timer_get_current_timestamp();
 TimestampTz quit_time = DT_NOEND;
 MemoryContext scheduler_mctx = CurrentMemoryContext;


 StartTransactionCommand();
 scheduled_jobs = ts_update_scheduled_jobs_list(scheduled_jobs, scheduler_mctx);
 CommitTransactionCommand();

 jobs_list_needs_update = 0;

 if (run_for_interval_ms > 0)
  quit_time = TimestampTzPlusMilliseconds(start, run_for_interval_ms);

 ereport(DEBUG1, (errmsg("database scheduler starting for database %d", MyDatabaseId)));







 while (quit_time > ts_timer_get_current_timestamp() && !ProcDiePending && !ts_shutdown_bgw)
 {
  TimestampTz next_wakeup = quit_time;


  start_scheduled_jobs(bgw_register);
  next_wakeup = least_timestamp(next_wakeup, earliest_time_to_start_next_job());
  next_wakeup = least_timestamp(next_wakeup, earliest_job_timeout());

  ts_timer_wait(next_wakeup);

  CHECK_FOR_INTERRUPTS();

  if (got_SIGHUP)
  {
   got_SIGHUP = 0;
   ProcessConfigFile(PGC_SIGHUP);
  }





  AcceptInvalidationMessages();


  if (jobs_list_needs_update)
  {
   StartTransactionCommand();
   scheduled_jobs = ts_update_scheduled_jobs_list(scheduled_jobs, scheduler_mctx);
   CommitTransactionCommand();
   jobs_list_needs_update = 0;
  }

  check_for_stopped_and_timed_out_jobs();
 }






 CHECK_FOR_INTERRUPTS();

 wait_for_all_jobs_to_shutdown();
 check_for_stopped_and_timed_out_jobs();
}
