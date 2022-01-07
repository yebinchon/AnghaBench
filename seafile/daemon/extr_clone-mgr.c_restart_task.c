
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int gboolean ;
struct TYPE_18__ {int repo_mgr; } ;
struct TYPE_17__ {int enc_version; scalar_t__ repo_version; int repo_id; scalar_t__ server_url; TYPE_2__* manager; } ;
struct TYPE_16__ {int tasks; } ;
struct TYPE_15__ {int * head; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafCloneManager ;
typedef TYPE_3__ CloneTask ;


 int CLONE_STATE_DONE ;
 int SYNC_ERROR_ID_GENERAL_ERROR ;
 int TRUE ;
 int check_http_protocol (TYPE_3__*) ;
 int clone_task_free (TYPE_3__*) ;
 TYPE_3__* clone_task_new (char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*) ;
 int g_hash_table_insert (int ,int ,TYPE_3__*) ;
 int g_strdup (int ) ;
 scalar_t__ load_clone_enc_info (TYPE_3__*) ;
 int load_clone_more_info (TYPE_3__*) ;
 int load_clone_repo_version_info (TYPE_3__*) ;
 TYPE_7__* seaf ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,char const*) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int transition_state (TYPE_3__*,int ) ;
 int transition_to_error (TYPE_3__*,int ) ;

__attribute__((used)) static gboolean
restart_task (sqlite3_stmt *stmt, void *data)
{
    SeafCloneManager *mgr = data;
    const char *repo_id, *repo_name, *token, *peer_id, *worktree, *passwd;
    const char *peer_addr, *peer_port, *email;
    CloneTask *task;
    SeafRepo *repo;

    repo_id = (const char *)sqlite3_column_text (stmt, 0);
    repo_name = (const char *)sqlite3_column_text (stmt, 1);
    token = (const char *)sqlite3_column_text (stmt, 2);
    peer_id = (const char *)sqlite3_column_text (stmt, 3);
    worktree = (const char *)sqlite3_column_text (stmt, 4);
    passwd = (const char *)sqlite3_column_text (stmt, 5);
    peer_addr = (const char *)sqlite3_column_text (stmt, 6);
    peer_port = (const char *)sqlite3_column_text (stmt, 7);
    email = (const char *)sqlite3_column_text (stmt, 8);

    task = clone_task_new (repo_id, peer_id, repo_name,
                           token, worktree, passwd,
                           peer_addr, peer_port, email);
    task->manager = mgr;

    task->enc_version = 1;

    if (passwd && load_clone_enc_info (task) < 0) {
        clone_task_free (task);
        return TRUE;
    }

    task->repo_version = 0;
    load_clone_repo_version_info (task);

    load_clone_more_info (task);

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);

    if (repo != ((void*)0) && repo->head != ((void*)0)) {
        transition_state (task, CLONE_STATE_DONE);
        return TRUE;
    }

    if (task->repo_version > 0) {
        if (task->server_url) {
            check_http_protocol (task);
        } else {
            transition_to_error (task, SYNC_ERROR_ID_GENERAL_ERROR);
            return TRUE;
        }
    }

    g_hash_table_insert (mgr->tasks, g_strdup(task->repo_id), task);

    return TRUE;
}
