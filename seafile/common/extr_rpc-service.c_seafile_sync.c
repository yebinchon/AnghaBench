
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_mgr; } ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int g_set_error (int **,int ,int ,char*) ;
 TYPE_1__* seaf ;
 int seaf_sync_manager_add_sync_task (int ,char const*,int **) ;

int
seafile_sync (const char *repo_id, const char *peer_id, GError **error)
{
    if (!repo_id) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Repo ID should not be null");
        return -1;
    }

    return seaf_sync_manager_add_sync_task (seaf->sync_mgr, repo_id, error);
}
