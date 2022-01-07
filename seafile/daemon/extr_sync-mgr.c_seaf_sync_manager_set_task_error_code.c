
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sync_infos; } ;
struct TYPE_7__ {TYPE_1__* current_task; } ;
struct TYPE_6__ {int error; } ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ SeafSyncManager ;


 TYPE_2__* g_hash_table_lookup (int ,char const*) ;

void
seaf_sync_manager_set_task_error_code (SeafSyncManager *mgr,
                                       const char *repo_id,
                                       int error)
{
    SyncInfo *info = g_hash_table_lookup (mgr->sync_infos, repo_id);
    if (!info)
        return;

    info->current_task->error = error;
}
