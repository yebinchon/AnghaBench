
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int mq_mgr; int repo_mgr; int sync_mgr; } ;
struct TYPE_9__ {int id; int name; } ;
struct TYPE_8__ {scalar_t__ in_sync; } ;
typedef TYPE_1__ SyncInfo ;
typedef int SeafSyncManager ;
typedef TYPE_2__ SeafRepo ;


 int g_free (char*) ;
 char* g_strdup (int ) ;
 TYPE_6__* seaf ;
 int seaf_message (char*,int ) ;
 int seaf_mq_manager_publish_notification (int ,char*,char*) ;
 int seaf_repo_manager_del_repo (int ,TYPE_2__*) ;
 int seaf_repo_manager_mark_repo_deleted (int ,TYPE_2__*) ;
 int seaf_sync_manager_cancel_sync_task (int ,int ) ;
 TYPE_1__* seaf_sync_manager_get_sync_info (int *,int ) ;

__attribute__((used)) static void
auto_delete_repo (SeafSyncManager *manager, SeafRepo *repo)
{
    SyncInfo *info = seaf_sync_manager_get_sync_info (manager, repo->id);
    char *name = g_strdup (repo->name);

    seaf_message ("Auto deleted repo '%s'.\n", repo->name);

    seaf_sync_manager_cancel_sync_task (seaf->sync_mgr, repo->id);

    if (info != ((void*)0) && info->in_sync) {
        seaf_repo_manager_mark_repo_deleted (seaf->repo_mgr, repo);
    } else {
        seaf_repo_manager_del_repo (seaf->repo_mgr, repo);
    }


    seaf_mq_manager_publish_notification (seaf->mq_mgr,
                                          "repo.removed",
                                          name);
    g_free (name);
}
