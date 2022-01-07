
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
typedef int gboolean ;
struct TYPE_16__ {int repo_mgr; int * ccnet_dir; int * worktree_dir; int * seaf_dir; } ;
struct TYPE_15__ {TYPE_2__* data; struct TYPE_15__* next; } ;
struct TYPE_14__ {int tasks; } ;
struct TYPE_13__ {int name; int * worktree; } ;
struct TYPE_12__ {scalar_t__ state; int repo_id; int * worktree; } ;
typedef TYPE_2__ SeafRepo ;
typedef TYPE_3__ SeafCloneManager ;
typedef TYPE_4__ GList ;
typedef int GHashTableIter ;
typedef int GError ;
typedef TYPE_1__ CloneTask ;


 scalar_t__ CLONE_STATE_CANCELED ;
 scalar_t__ CLONE_STATE_DONE ;
 int FALSE ;
 int SEAFILE_DOMAIN ;
 int SEAF_ERR_GENERAL ;
 int TRUE ;
 scalar_t__ check_dir_inclusiveness (char const*,int *) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,TYPE_1__**,TYPE_1__**) ;
 int g_list_free (TYPE_4__*) ;
 int g_set_error (int **,int ,int ,char*) ;
 TYPE_8__* seaf ;
 TYPE_4__* seaf_repo_manager_get_repo_list (int ,int,int) ;
 int seaf_warning (char*,...) ;

gboolean
seaf_clone_manager_check_worktree_path (SeafCloneManager *mgr, const char *path, GError **error)
{
    GList *repos, *ptr;
    SeafRepo *repo;
    GHashTableIter iter;
    gpointer key, value;
    CloneTask *task;

    if (check_dir_inclusiveness (path, seaf->seaf_dir) != 0 ||

        check_dir_inclusiveness (path, seaf->worktree_dir) < 0 ||
        check_dir_inclusiveness (path, seaf->ccnet_dir) != 0) {
        seaf_warning ("Worktree path conflicts with seafile system path.\n");
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                     "Worktree conflicts system path");
        return FALSE;
    }

    repos = seaf_repo_manager_get_repo_list (seaf->repo_mgr, -1, -1);
    for (ptr = repos; ptr != ((void*)0); ptr = ptr->next) {
        repo = ptr->data;
        if (repo->worktree != ((void*)0) &&
            check_dir_inclusiveness (path, repo->worktree) != 0) {
            seaf_warning ("Worktree path conflict with repo %s.\n", repo->name);
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Worktree conflicts existing repo");
            g_list_free (repos);
            return FALSE;
        }
    }
    g_list_free (repos);

    g_hash_table_iter_init (&iter, mgr->tasks);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        task = value;
        if (task->state == CLONE_STATE_DONE ||
            task->state == CLONE_STATE_CANCELED)
            continue;
        if (check_dir_inclusiveness (path, task->worktree) != 0) {
            seaf_warning ("Worktree path conflict with clone %.8s.\n",
                          task->repo_id);
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                         "Worktree conflicts existing repo");
            return FALSE;
        }
    }

    return TRUE;
}
