
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SearpcClient ;
typedef int GError ;


 int g_return_val_if_fail (int,int *) ;
 char* searpc_client_call__string (int *,char*,int **,int,char*,char const*) ;

char *
seafile_get_repo_token (SearpcClient *client,
                        const char *repo_id,
                        GError **error)
{
    g_return_val_if_fail (client && repo_id, ((void*)0));

    return searpc_client_call__string (
        client, "seafile_get_repo_token", error,
        1, "string", repo_id);
}
