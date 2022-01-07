
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SearpcClient ;
typedef int GObject ;
typedef int GError ;


 int SEAFILE_TYPE_REPO ;
 int g_return_val_if_fail (int,int *) ;
 int * searpc_client_call__object (int *,char*,int ,int **,int,char*,char const*) ;

GObject *
seafile_get_repo (SearpcClient *client,
                  const char *repo_id,
                  GError **error)
{
    g_return_val_if_fail (client && repo_id, ((void*)0));

    return searpc_client_call__object (
        client, "seafile_get_repo", SEAFILE_TYPE_REPO, error,
        1, "string", repo_id);
}
