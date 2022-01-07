
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_13__ {int repo_mgr; int branch_mgr; } ;
struct TYPE_12__ {char* commit_id; } ;
struct TYPE_11__ {int last_sync_time; int server_url; int name; int id; } ;
typedef int SyncTask ;
typedef int SeafSyncManager ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafBranch ;


 char* EMPTY_SHA1 ;
 int FALSE ;
 int REPO_PROP_DOWNLOAD_HEAD ;
 scalar_t__ can_schedule_repo (int *,TYPE_1__*) ;
 int check_head_commit_http (int *) ;
 int commit_repo (int *) ;
 scalar_t__ create_commit_from_event_queue (int *,TYPE_1__*,scalar_t__) ;
 int * create_sync_task_v2 (int *,TYPE_1__*,scalar_t__,int ) ;
 int g_free (char*) ;
 int need_check_on_server (int *,TYPE_1__*,char*) ;
 TYPE_6__* seaf ;
 TYPE_2__* seaf_branch_manager_get_branch (int ,int ,char*) ;
 int seaf_branch_unref (TYPE_2__*) ;
 int seaf_debug (char*,int ,int ) ;
 char* seaf_repo_manager_get_repo_property (int ,int ,int ) ;
 int seaf_warning (char*,int ,int ) ;
 int start_fetch_if_necessary (int *,char*) ;
 int start_upload_if_necessary (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int time (int *) ;

__attribute__((used)) static int
sync_repo_v2 (SeafSyncManager *manager, SeafRepo *repo, gboolean is_manual_sync)
{
    SeafBranch *master, *local;
    SyncTask *task;
    int ret = 0;
    char *last_download = ((void*)0);

    master = seaf_branch_manager_get_branch (seaf->branch_mgr, repo->id, "master");
    if (!master) {
        seaf_warning ("No master branch found for repo %s(%.8s).\n",
                      repo->name, repo->id);
        return -1;
    }
    local = seaf_branch_manager_get_branch (seaf->branch_mgr, repo->id, "local");
    if (!local) {
        seaf_warning ("No local branch found for repo %s(%.8s).\n",
                      repo->name, repo->id);
        return -1;
    }




    last_download = seaf_repo_manager_get_repo_property (seaf->repo_mgr,
                                                         repo->id,
                                                         REPO_PROP_DOWNLOAD_HEAD);
    if (last_download && strcmp (last_download, EMPTY_SHA1) != 0) {
        if (is_manual_sync || can_schedule_repo (manager, repo)) {
            task = create_sync_task_v2 (manager, repo, is_manual_sync, FALSE);
            start_fetch_if_necessary (task, last_download);
        }
        goto out;
    }

    if (strcmp (master->commit_id, local->commit_id) != 0) {
        if (is_manual_sync || can_schedule_repo (manager, repo)) {
            task = create_sync_task_v2 (manager, repo, is_manual_sync, FALSE);
            start_upload_if_necessary (task);
        }



        goto out;
    } else if (is_manual_sync) {
        task = create_sync_task_v2 (manager, repo, is_manual_sync, FALSE);
        commit_repo (task);
        goto out;
    } else if (create_commit_from_event_queue (manager, repo, is_manual_sync))
        goto out;

    if (is_manual_sync || can_schedule_repo (manager, repo)) {



        if (!is_manual_sync && !need_check_on_server (manager, repo, master->commit_id)) {
            seaf_debug ("Repo %s is not changed on server %s.\n", repo->name, repo->server_url);
            repo->last_sync_time = time(((void*)0));
            goto out;
        }

        task = create_sync_task_v2 (manager, repo, is_manual_sync, FALSE);
        check_head_commit_http (task);
    }

out:
    g_free (last_download);
    seaf_branch_unref (master);
    seaf_branch_unref (local);
    return ret;
}
