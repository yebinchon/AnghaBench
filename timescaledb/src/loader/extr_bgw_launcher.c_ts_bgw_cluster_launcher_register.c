
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int worker ;
struct TYPE_4__ {int bgw_flags; int bgw_function_name; int bgw_library_name; scalar_t__ bgw_notify_pid; int bgw_start_time; int bgw_restart_time; int bgw_name; } ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 int BGW_LAUNCHER_RESTART_TIME_S ;
 int BGW_MAXLEN ;
 int BgWorkerStart_RecoveryFinished ;
 char* EXTENSION_NAME ;
 int RegisterBackgroundWorker (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int snprintf (int ,int ,char*) ;

extern void
ts_bgw_cluster_launcher_register(void)
{
 BackgroundWorker worker;

 memset(&worker, 0, sizeof(worker));

 snprintf(worker.bgw_name, BGW_MAXLEN, "TimescaleDB Background Worker Launcher");
 worker.bgw_flags = BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION;
 worker.bgw_restart_time = BGW_LAUNCHER_RESTART_TIME_S;







 worker.bgw_start_time = BgWorkerStart_RecoveryFinished;
 worker.bgw_notify_pid = 0;
 snprintf(worker.bgw_library_name, BGW_MAXLEN, EXTENSION_NAME);
 snprintf(worker.bgw_function_name, BGW_MAXLEN, "ts_bgw_cluster_launcher_main");
 RegisterBackgroundWorker(&worker);
}
