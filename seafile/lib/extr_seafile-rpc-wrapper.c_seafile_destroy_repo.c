
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SearpcClient ;
typedef int GError ;


 int g_return_val_if_fail (int,int) ;
 int searpc_client_call__int (int *,char*,int **,int,char*,char const*) ;

int
seafile_destroy_repo (SearpcClient *client,
                      const char *repo_id, GError **error)
{
    g_return_val_if_fail (client && repo_id, -1);

    return searpc_client_call__int (
        client, "seafile_destroy_repo", error,
        1, "string", repo_id);
}
