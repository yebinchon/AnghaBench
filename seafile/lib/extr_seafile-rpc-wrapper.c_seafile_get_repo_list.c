
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SearpcClient ;
typedef int GList ;
typedef int GError ;


 int SEAFILE_TYPE_REPO ;
 int * searpc_client_call__objlist (int *,char*,int ,int **,int,char*,int,char*,int) ;

GList *
seafile_get_repo_list (SearpcClient *client,
                       int offset,
                       int limit, GError **error)
{
    return searpc_client_call__objlist (
        client, "seafile_get_repo_list", SEAFILE_TYPE_REPO, error,
        2, "int", offset, "int", limit);
}
