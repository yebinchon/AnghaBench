
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int started; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int auto_sync_enabled; } ;
typedef TYPE_2__ SeafSyncManager ;


 int TRUE ;
 int enable_auto_sync_for_repos (TYPE_2__*) ;
 int g_debug (char*) ;
 TYPE_4__* seaf ;
 int seaf_message (char*) ;

int
seaf_sync_manager_enable_auto_sync (SeafSyncManager *mgr)
{
    if (!seaf->started) {
        seaf_message ("sync manager is not started, skip enable auto sync.\n");
        return -1;
    }

    enable_auto_sync_for_repos (mgr);

    mgr->priv->auto_sync_enabled = TRUE;
    g_debug ("[sync mgr] auto sync is enabled\n");
    return 0;
}
