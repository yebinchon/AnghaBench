
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
 int atoi (char*) ;
 char* config_get_string (int ,char const*) ;
 int g_free (char*) ;

int
seafile_session_config_get_int (SeafileSession *session,
                                const char *key,
                                gboolean *exists)
{
    char *value;
    int ret;

    value = config_get_string (session->config_db, key);
    if (!value) {
        if (exists)
            *exists = FALSE;
        return -1;
    }

    if (exists)
        *exists = TRUE;
    ret = atoi (value);
    g_free (value);
    return ret;
}
