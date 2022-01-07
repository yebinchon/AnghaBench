
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CommitTransactionCommand () ;
 int ERROR ;
 int StartTransactionCommand () ;
 int WARNING ;
 int elog (int ,char*) ;

__attribute__((used)) static bool
test_job_2_error()
{
 StartTransactionCommand();
 elog(WARNING, "Before error job 2");

 elog(ERROR, "Error job 2");

 elog(WARNING, "After error job 2");

 CommitTransactionCommand();
 return 1;
}
