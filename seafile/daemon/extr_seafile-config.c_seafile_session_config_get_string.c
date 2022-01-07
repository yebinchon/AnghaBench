
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config_db; } ;
typedef TYPE_1__ SeafileSession ;


 char* config_get_string (int ,char const*) ;

char *
seafile_session_config_get_string (SeafileSession *session,
                                   const char *key)
{
    return (config_get_string (session->config_db, key));
}
