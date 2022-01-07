
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SearpcClient ;
typedef int GError ;


 int searpc_client_call__int (int *,char*,int **,int,char*,char const*) ;

int
seafile_calc_dir_size (SearpcClient *client, const char *path, GError **error)
{
    return searpc_client_call__int (client, "seafile_calc_dir_size", error,
                                    1, "string", path);
}
