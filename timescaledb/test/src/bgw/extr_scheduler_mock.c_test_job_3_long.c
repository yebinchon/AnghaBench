
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BackgroundWorkerBlockSignals () ;
 int BackgroundWorkerUnblockSignals () ;
 int DirectFunctionCall1 (int ,int ) ;
 int Float8GetDatum (long double) ;
 int SIGTERM ;
 int WARNING ;
 int elog (int ,char*) ;
 int log_terminate_signal ;
 int pg_sleep ;
 int * pqsignal (int ,int ) ;
 int * prev_signal_func ;

__attribute__((used)) static bool
test_job_3_long()
{
 BackgroundWorkerBlockSignals();





 if (prev_signal_func == ((void*)0))
  prev_signal_func = pqsignal(SIGTERM, log_terminate_signal);

 BackgroundWorkerUnblockSignals();

 elog(WARNING, "Before sleep job 3");

 DirectFunctionCall1(pg_sleep, Float8GetDatum(0.5L));

 elog(WARNING, "After sleep job 3");
 return 1;
}
