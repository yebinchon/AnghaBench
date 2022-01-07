
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char gchar ;
struct TYPE_5__ {int repo_mgr; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ SeafRepo ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int SEAF_ERR_BAD_REPO ;
 int g_set_error (int **,int ,int ,char*,...) ;
 TYPE_3__* seaf ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,char const*) ;
 char* seaf_repo_manager_get_repo_property (int ,int ,char const*) ;

gchar *
seafile_get_repo_property (const char *repo_id,
                           const char *key,
                           GError **error)
{
    char *value = ((void*)0);

    if (!repo_id || !key) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Arguments should not be empty");
        return ((void*)0);
    }

    SeafRepo *repo;
    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
    if (!repo) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_REPO, "Can't find Repo %s", repo_id);
        return ((void*)0);
    }

    value = seaf_repo_manager_get_repo_property (seaf->repo_mgr, repo->id, key);
    return value;
}
