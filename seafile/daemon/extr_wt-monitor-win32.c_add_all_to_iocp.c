
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * gpointer ;
struct TYPE_6__ {scalar_t__* cmd_pipe; TYPE_1__* priv; } ;
struct TYPE_5__ {int handle_hash; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;
typedef TYPE_2__ SeafWTMonitor ;
typedef int HANDLE ;
typedef int GHashTableIter ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int TRUE ;
 int add_handle_to_iocp (TYPE_2__*,int ) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,int **,int **) ;
 int seaf_debug (char*) ;
 int seaf_warning (char*,char*,...) ;

__attribute__((used)) static BOOL
add_all_to_iocp (SeafWTMonitor *monitor)
{
    SeafWTMonitorPriv *priv = monitor->priv;

    if (!add_handle_to_iocp(monitor, (HANDLE)monitor->cmd_pipe[0])) {

        seaf_warning("Failed to add cmd_pipe to iocp, "
                     "error code %lu", GetLastError());
        return FALSE;
    }

    GHashTableIter iter;
    gpointer value = ((void*)0);
    gpointer key = ((void*)0);

    g_hash_table_iter_init (&iter, priv->handle_hash);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        if (!add_handle_to_iocp(monitor, (HANDLE)value)) {
            seaf_warning("Failed to add dir handle to iocp, "
                         "repo %s, error code %lu", (char *)key,
                         GetLastError());
            continue;
        }
    }

    seaf_debug("Done: add_all_to_iocp\n");
    return TRUE;
}
