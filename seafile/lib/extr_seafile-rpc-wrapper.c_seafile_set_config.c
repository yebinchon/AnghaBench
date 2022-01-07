
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SearpcClient ;


 int searpc_client_call__int (int *,char*,int *,int,char*,char const*,char*,char const*) ;

int
seafile_set_config (SearpcClient *client, const char *key, const char *value)
{
    if (!key || !value)
        return -1;

    return searpc_client_call__int (
        client, "seafile_set_config", ((void*)0),
        2, "string", key, "string", value);
}
