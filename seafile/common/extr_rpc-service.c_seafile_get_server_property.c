
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
 char* seaf_repo_manager_get_server_property (int ,char const*,char const*) ;

char *
seafile_get_server_property (const char *server_url, const char *key, GError **error)
{
    if (!server_url || !key) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Argument should not be null");
        return ((void*)0);
    }

    return seaf_repo_manager_get_server_property (seaf->repo_mgr,
                                                  server_url,
                                                  key);
}
