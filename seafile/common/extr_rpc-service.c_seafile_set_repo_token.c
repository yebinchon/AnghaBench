
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repo_mgr; } ;
typedef int SeafRepo ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int SEAF_ERR_BAD_REPO ;
 int SEAF_ERR_INTERNAL ;
 int g_set_error (int **,int ,int ,char*,...) ;
 TYPE_1__* seaf ;
 int * seaf_repo_manager_get_repo (int ,char const*) ;
 int seaf_repo_manager_set_repo_token (int ,int *,char const*) ;

int
seafile_set_repo_token (const char *repo_id,
                        const char *token,
                        GError **error)
{
    int ret;

    if (repo_id == ((void*)0) || token == ((void*)0)) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Arguments should not be empty");
        return -1;
    }

    SeafRepo *repo;
    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
    if (!repo) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_REPO, "Can't find Repo %s", repo_id);
        return -1;
    }

    ret = seaf_repo_manager_set_repo_token (seaf->repo_mgr,
                                            repo, token);
    if (ret < 0) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL,
                     "Failed to set token for repo %s", repo_id);
        return -1;
    }

    return 0;
}
