
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sql ;
typedef int gboolean ;
struct TYPE_3__ {int config_db; } ;
typedef TYPE_1__ SeafileSession ;


 int snprintf (char*,int,char*,char const*) ;
 int sqlite_check_for_existence (int ,char*) ;

gboolean
seafile_session_config_exists (SeafileSession *session, const char *key)
{
    char sql[256];

    snprintf (sql, sizeof(sql),
              "SELECT 1 FROM Config WHERE key = '%s'",
              key);
    return sqlite_check_for_existence (session->config_db, sql);
}
