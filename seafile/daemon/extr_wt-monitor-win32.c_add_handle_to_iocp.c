
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_7__ {scalar_t__* cmd_pipe; TYPE_1__* priv; } ;
struct TYPE_6__ {int iocp_handle; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;
typedef TYPE_2__ SeafWTMonitor ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CreateIoCompletionPort (scalar_t__,int ,int ,int) ;
 int FALSE ;
 int GetLastError () ;
 int seaf_warning (char*,int ) ;
 int start_watch_cmd_pipe (TYPE_2__*,int *) ;
 int start_watch_dir_change (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static BOOL
add_handle_to_iocp (SeafWTMonitor *monitor, HANDLE hAdd)
{
    SeafWTMonitorPriv *priv = monitor->priv;

    if (!priv || !hAdd)
        return FALSE;
    priv->iocp_handle = CreateIoCompletionPort
        (hAdd,
         priv->iocp_handle,
         (ULONG_PTR)hAdd,
         1);

    if (!priv->iocp_handle) {
        seaf_warning ("failed to create/add iocp, error code %lu",
                      GetLastError());
        return FALSE;
    }

    if (hAdd == (HANDLE)monitor->cmd_pipe[0]) {

        return start_watch_cmd_pipe (monitor, ((void*)0));
    } else {

        return start_watch_dir_change (priv, hAdd);
    }

}
