
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CommitTransactionCommand () ;
 int StartTransactionCommand () ;
 int WARNING ;
 int elog (int ,char*) ;

__attribute__((used)) static bool
test_job_4(void)
{
 StartTransactionCommand();
 elog(WARNING, "Execute job 4");
 CommitTransactionCommand();
 return 1;
}
