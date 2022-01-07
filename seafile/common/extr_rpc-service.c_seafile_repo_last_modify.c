
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int repo_mgr; } ;
struct TYPE_4__ {int last_modify; } ;
typedef TYPE_1__ SeafRepo ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int SEAF_ERR_BAD_REPO ;
 int g_set_error (int **,int ,int ,char*) ;
 TYPE_3__* seaf ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,char const*) ;

int
seafile_repo_last_modify(const char *repo_id, GError **error)
{
    SeafRepo *repo;
    int ctime = 0;

    if (!repo_id) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return -1;
    }

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
    if (!repo) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_REPO, "No such repository");
        return -1;
    }

    ctime = repo->last_modify;

    return ctime;
}
