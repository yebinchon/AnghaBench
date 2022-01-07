
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int terminate_all_jobs_and_release_workers () ;

__attribute__((used)) static void
bgw_scheduler_before_shmem_exit_callback(int code, Datum arg)
{
 terminate_all_jobs_and_release_workers();
}
