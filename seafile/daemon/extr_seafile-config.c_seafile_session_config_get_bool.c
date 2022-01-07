
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int config_db; } ;
typedef TYPE_1__ SeafileSession ;


 int FALSE ;
 int TRUE ;
 char* config_get_string (int ,char const*) ;
 int g_free (char*) ;
 scalar_t__ g_strcmp0 (char*,char*) ;

gboolean
seafile_session_config_get_bool (SeafileSession *session,
                                 const char *key)
{
    char *value;
    gboolean ret = FALSE;

    value = config_get_string (session->config_db, key);
    if (g_strcmp0(value, "true") == 0)
        ret = TRUE;

    g_free (value);
    return ret;
}
