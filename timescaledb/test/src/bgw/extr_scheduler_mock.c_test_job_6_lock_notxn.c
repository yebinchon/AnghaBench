
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BackgroundWorkerBlockSignals () ;
 int BackgroundWorkerUnblockSignals () ;
 int DirectFunctionCall1 (int ,int ) ;
 int Int64GetDatum (int) ;
 int WARNING ;
 int elog (int ,char*) ;
 int pg_advisory_lock_int8 ;

__attribute__((used)) static bool
test_job_6_lock_notxn()
{
 BackgroundWorkerBlockSignals();

 BackgroundWorkerUnblockSignals();

 elog(WARNING, "Before lock job 6");


 DirectFunctionCall1(pg_advisory_lock_int8, Int64GetDatum(1));

 elog(WARNING, "After lock job 5");
 return 1;
}
