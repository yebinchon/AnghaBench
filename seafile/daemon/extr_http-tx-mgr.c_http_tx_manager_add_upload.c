
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_17__ {int job_mgr; int repo_mgr; } ;
struct TYPE_16__ {TYPE_1__* priv; } ;
struct TYPE_15__ {int protocol_version; int repo_name; int use_fileserver_port; int state; } ;
struct TYPE_14__ {char const* name; } ;
struct TYPE_13__ {int upload_tasks; } ;
typedef TYPE_2__ SeafRepo ;
typedef TYPE_3__ HttpTxTask ;
typedef TYPE_4__ HttpTxManager ;
typedef int GError ;


 int FALSE ;
 int HTTP_TASK_STATE_NORMAL ;
 int HTTP_TASK_TYPE_UPLOAD ;
 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int clean_tasks_for_repo (TYPE_4__*,char const*) ;
 int g_hash_table_insert (int ,int ,TYPE_3__*) ;
 int g_hash_table_remove (int ,char const*) ;
 int g_set_error (int **,int ,int ,char*) ;
 int g_strdup (char const*) ;
 TYPE_3__* http_tx_task_new (TYPE_4__*,char const*,int,int ,int ,char const*,char const*,int *,int *) ;
 int http_upload_done ;
 int http_upload_thread ;
 TYPE_7__* seaf ;
 scalar_t__ seaf_job_manager_schedule_job (int ,int ,int ,TYPE_3__*) ;
 TYPE_2__* seaf_repo_manager_get_repo (int ,char const*) ;

int
http_tx_manager_add_upload (HttpTxManager *manager,
                            const char *repo_id,
                            int repo_version,
                            const char *host,
                            const char *token,
                            int protocol_version,
                            gboolean use_fileserver_port,
                            GError **error)
{
    HttpTxTask *task;
    SeafRepo *repo;

    if (!repo_id || !token || !host) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Empty argument(s)");
        return -1;
    }

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
    if (!repo) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Repo not found");
        return -1;
    }

    clean_tasks_for_repo (manager, repo_id);

    task = http_tx_task_new (manager, repo_id, repo_version,
                             HTTP_TASK_TYPE_UPLOAD, FALSE,
                             host, token, ((void*)0), ((void*)0));

    task->protocol_version = protocol_version;

    task->state = HTTP_TASK_STATE_NORMAL;

    task->use_fileserver_port = use_fileserver_port;

    task->repo_name = g_strdup(repo->name);

    g_hash_table_insert (manager->priv->upload_tasks,
                         g_strdup(repo_id),
                         task);

    if (seaf_job_manager_schedule_job (seaf->job_mgr,
                                       http_upload_thread,
                                       http_upload_done,
                                       task) < 0) {
        g_hash_table_remove (manager->priv->upload_tasks, repo_id);
        return -1;
    }

    return 0;
}
