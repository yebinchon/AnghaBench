
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int worker ;
typedef int VirtualTransactionId ;
struct TYPE_4__ {int bgw_flags; int bgw_extra; int bgw_main_arg; int bgw_notify_pid; int bgw_function_name; int bgw_library_name; int bgw_start_time; int bgw_restart_time; int bgw_name; } ;
typedef int Oid ;
typedef int BackgroundWorkerHandle ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 char* BGW_ENTRYPOINT_FUNCNAME ;
 int BGW_MAXLEN ;
 int BGW_NEVER_RESTART ;
 int BgWorkerStart_RecoveryFinished ;
 char* EXTENSION_NAME ;
 int MyProcPid ;
 int ObjectIdGetDatum (int ) ;
 int RegisterDynamicBackgroundWorker (TYPE_1__*,int **) ;
 int memcpy (int ,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int snprintf (int ,int ,char*) ;

__attribute__((used)) static bool
register_entrypoint_for_db(Oid db_id, VirtualTransactionId vxid, BackgroundWorkerHandle **handle)
{
 BackgroundWorker worker;

 memset(&worker, 0, sizeof(worker));
 snprintf(worker.bgw_name, BGW_MAXLEN, "TimescaleDB Background Worker Scheduler");
 worker.bgw_flags = BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION;
 worker.bgw_restart_time = BGW_NEVER_RESTART;
 worker.bgw_start_time = BgWorkerStart_RecoveryFinished;
 snprintf(worker.bgw_library_name, BGW_MAXLEN, EXTENSION_NAME);
 snprintf(worker.bgw_function_name, BGW_MAXLEN, BGW_ENTRYPOINT_FUNCNAME);
 worker.bgw_notify_pid = MyProcPid;
 worker.bgw_main_arg = ObjectIdGetDatum(db_id);
 memcpy(worker.bgw_extra, &vxid, sizeof(VirtualTransactionId));

 return RegisterDynamicBackgroundWorker(&worker, handle);
}
