
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_8__ {int folder_perm_error_regex; int locked_error_regex; } ;
struct TYPE_7__ {void* error; int repo_name; int repo_id; } ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef TYPE_2__ HttpTxTask ;
typedef TYPE_3__ HttpTxPriv ;
typedef int GMatchInfo ;


 void* SYNC_ERROR_ID_FILE_LOCKED ;
 void* SYNC_ERROR_ID_FOLDER_PERM_DENIED ;
 int g_free (char*) ;
 char* g_match_info_fetch (int *,int) ;
 int g_match_info_free (int *) ;
 scalar_t__ g_regex_match (int ,char const*,int ,int **) ;
 TYPE_4__* seaf ;
 int seaf_repo_manager_record_sync_error (int ,int ,char*,void*) ;

__attribute__((used)) static void
notify_permission_error (HttpTxTask *task, const char *error_str)
{
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    GMatchInfo *match_info;
    char *path;

    if (g_regex_match (priv->locked_error_regex, error_str, 0, &match_info)) {
        path = g_match_info_fetch (match_info, 1);
        seaf_repo_manager_record_sync_error (task->repo_id, task->repo_name, path,
                                             SYNC_ERROR_ID_FILE_LOCKED);
        g_free (path);


        task->error = SYNC_ERROR_ID_FILE_LOCKED;
    } else if (g_regex_match (priv->folder_perm_error_regex, error_str, 0, &match_info)) {
        path = g_match_info_fetch (match_info, 1);

        seaf_repo_manager_record_sync_error (task->repo_id, task->repo_name,
                                             (path[0] == '/') ? (path + 1) : path,
                                             SYNC_ERROR_ID_FOLDER_PERM_DENIED);
        g_free (path);

        task->error = SYNC_ERROR_ID_FOLDER_PERM_DENIED;
    }

    g_match_info_free (match_info);
}
