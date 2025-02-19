
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_14__ {int job_mgr; int repo_mgr; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {int protocol_version; void* repo_name; int ref_cnt_lock; int blk_ref_cnts; int use_fileserver_port; int state; void* email; int head; } ;
struct TYPE_11__ {int download_tasks; } ;
typedef int SeafRepo ;
typedef TYPE_2__ HttpTxTask ;
typedef TYPE_3__ HttpTxManager ;
typedef int GError ;


 int HTTP_TASK_STATE_NORMAL ;
 int HTTP_TASK_TYPE_DOWNLOAD ;
 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int clean_tasks_for_repo (TYPE_3__*,char const*) ;
 int g_free ;
 int g_hash_table_insert (int ,void*,TYPE_2__*) ;
 int g_hash_table_new_full (int ,int ,int ,int ) ;
 int g_hash_table_remove (int ,char const*) ;
 int g_set_error (int **,int ,int ,char*) ;
 int g_str_equal ;
 int g_str_hash ;
 void* g_strdup (char const*) ;
 int http_download_done ;
 int http_download_thread ;
 TYPE_2__* http_tx_task_new (TYPE_3__*,char const*,int,int ,int ,char const*,char const*,char const*,char const*) ;
 int memcpy (int ,char const*,int) ;
 int pthread_mutex_init (int *,int *) ;
 TYPE_5__* seaf ;
 scalar_t__ seaf_job_manager_schedule_job (int ,int ,int ,TYPE_2__*) ;
 int * seaf_repo_manager_get_repo (int ,char const*) ;

int
http_tx_manager_add_download (HttpTxManager *manager,
                              const char *repo_id,
                              int repo_version,
                              const char *host,
                              const char *token,
                              const char *server_head_id,
                              gboolean is_clone,
                              const char *passwd,
                              const char *worktree,
                              int protocol_version,
                              const char *email,
                              gboolean use_fileserver_port,
                              const char *repo_name,
                              GError **error)
{
    HttpTxTask *task;
    SeafRepo *repo;

    if (!repo_id || !token || !host || !server_head_id || !email) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Empty argument(s)");
        return -1;
    }

    if (!is_clone) {
        repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
        if (!repo) {
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Repo not found");
            return -1;
        }
    }

    clean_tasks_for_repo (manager, repo_id);

    task = http_tx_task_new (manager, repo_id, repo_version,
                             HTTP_TASK_TYPE_DOWNLOAD, is_clone,
                             host, token, passwd, worktree);

    memcpy (task->head, server_head_id, 40);
    task->protocol_version = protocol_version;
    task->email = g_strdup(email);

    task->state = HTTP_TASK_STATE_NORMAL;

    task->use_fileserver_port = use_fileserver_port;

    task->blk_ref_cnts = g_hash_table_new_full (g_str_hash, g_str_equal,
                                                g_free, g_free);
    pthread_mutex_init (&task->ref_cnt_lock, ((void*)0));

    g_hash_table_insert (manager->priv->download_tasks,
                         g_strdup(repo_id),
                         task);

    task->repo_name = g_strdup(repo_name);

    if (seaf_job_manager_schedule_job (seaf->job_mgr,
                                       http_download_thread,
                                       http_download_done,
                                       task) < 0) {
        g_hash_table_remove (manager->priv->download_tasks, repo_id);
        return -1;
    }

    return 0;
}
