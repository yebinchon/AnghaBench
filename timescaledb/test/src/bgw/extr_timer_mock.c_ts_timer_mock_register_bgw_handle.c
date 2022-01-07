
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BackgroundWorkerHandle ;


 int WARNING ;
 int * bgw_handle ;
 int elog (int ,char*) ;

void
ts_timer_mock_register_bgw_handle(BackgroundWorkerHandle *handle)
{
 elog(WARNING, "[TESTING] Registered new background worker");
 bgw_handle = handle;
}
