
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BackgroundWorkerBlockSignals () ;
 int BackgroundWorkerUnblockSignals () ;
 int CommitTransactionCommand () ;
 int DirectFunctionCall1 (int ,int ) ;
 int Int64GetDatum (int) ;
 int StartTransactionCommand () ;
 int WARNING ;
 int elog (int ,char*) ;
 int pg_advisory_lock_int8 ;

__attribute__((used)) static bool
test_job_5_lock()
{
 BackgroundWorkerBlockSignals();

 BackgroundWorkerUnblockSignals();

 elog(WARNING, "Before lock job 5");


 StartTransactionCommand();
 DirectFunctionCall1(pg_advisory_lock_int8, Int64GetDatum(1));
 CommitTransactionCommand();

 elog(WARNING, "After lock job 5");
 return 1;
}
