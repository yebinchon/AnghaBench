
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repo_mgr; } ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int g_set_error (int **,int ,int ,char*) ;
 TYPE_1__* seaf ;
 int seaf_repo_manager_update_repos_server_host (int ,char const*,char const*,char const*) ;

int
seafile_update_repos_server_host (const char *old_host,
                                  const char *new_host,
                                  const char *new_server_url,
                                  GError **error)
{
    if (!old_host || !new_host || !new_server_url) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return -1;
    }

    return seaf_repo_manager_update_repos_server_host(
        seaf->repo_mgr, old_host, new_host, new_server_url);
}
