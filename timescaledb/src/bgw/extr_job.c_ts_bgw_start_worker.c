
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bgw_flags; int bgw_extra; int bgw_function_name; int bgw_library_name; int bgw_name; int bgw_main_arg; int bgw_notify_pid; int bgw_restart_time; int bgw_start_time; } ;
typedef int BackgroundWorkerHandle ;
typedef TYPE_1__ BackgroundWorker ;


 int Assert (int) ;
 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 scalar_t__ BGW_EXTRALEN ;
 scalar_t__ BGW_MAXLEN ;
 int BGW_NEVER_RESTART ;
 int BgWorkerStart_RecoveryFinished ;
 int MyDatabaseId ;
 int MyProcPid ;
 int ObjectIdGetDatum (int ) ;
 int RegisterDynamicBackgroundWorker (TYPE_1__*,int **) ;
 int StrNCpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 char const* ts_extension_get_so_name () ;

BackgroundWorkerHandle *
ts_bgw_start_worker(const char *function, const char *name, const char *extra)
{
 BackgroundWorker worker = {
  .bgw_flags = BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION,
  .bgw_start_time = BgWorkerStart_RecoveryFinished,
  .bgw_restart_time = BGW_NEVER_RESTART,
  .bgw_notify_pid = MyProcPid,
  .bgw_main_arg = ObjectIdGetDatum(MyDatabaseId),
 };
 BackgroundWorkerHandle *handle = ((void*)0);

 StrNCpy(worker.bgw_name, name, BGW_MAXLEN);
 StrNCpy(worker.bgw_library_name, ts_extension_get_so_name(), BGW_MAXLEN);
 StrNCpy(worker.bgw_function_name, function, BGW_MAXLEN);

 Assert(strlen(extra) < BGW_EXTRALEN);
 StrNCpy(worker.bgw_extra, extra, BGW_EXTRALEN);

 if (!RegisterDynamicBackgroundWorker(&worker, &handle))
  return ((void*)0);
 return handle;
}
