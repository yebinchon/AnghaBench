
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SearpcClient ;


 char* searpc_client_call__string (int *,char*,int *,int,char*,char const*) ;

char *
seafile_get_config (SearpcClient *client, const char *key)
{
    if (!key)
        return ((void*)0);

    return searpc_client_call__string (
        client, "seafile_get_config", ((void*)0),
        1, "string", key);
}
