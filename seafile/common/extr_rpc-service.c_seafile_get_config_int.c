
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_GENERAL ;
 int TRUE ;
 int g_set_error (int **,int ,int ,char*) ;
 int seaf ;
 int seafile_session_config_get_int (int ,char const*,int *) ;

int
seafile_get_config_int (const char *key, GError **error)
{
    gboolean exists = TRUE;

    int ret = seafile_session_config_get_int(seaf, key, &exists);

    if (!exists) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, "Config not exists");
        return -1;
    }

    return ret;
}
