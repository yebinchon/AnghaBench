
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BackgroundWorkerHandle ;


 int * ts_bgw_start_worker (char*,char*,char*) ;

__attribute__((used)) static BackgroundWorkerHandle *
start_test_scheduler(char *params)
{




 return ts_bgw_start_worker("ts_bgw_db_scheduler_test_main",
          "ts_bgw_db_scheduler_test_main",
          params);
}
