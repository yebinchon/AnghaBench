
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sql ;
struct TYPE_3__ {int http_proxy_port; int config_db; } ;
typedef TYPE_1__ SeafileSession ;


 int KEY_PROXY_PORT ;
 scalar_t__ g_strcmp0 (char const*,int ) ;
 int sqlite3_snprintf (int,char*,char*,char const*,int) ;
 scalar_t__ sqlite_query_exec (int ,char*) ;

int
seafile_session_config_set_int (SeafileSession *session,
                                const char *key,
                                int value)
{
    char sql[256];

    sqlite3_snprintf (sizeof(sql), sql,
                      "REPLACE INTO Config VALUES ('%q', %d);",
                      key, value);
    if (sqlite_query_exec (session->config_db, sql) < 0)
        return -1;

    if (g_strcmp0(key, KEY_PROXY_PORT) == 0) {
        session->http_proxy_port = value;
    }

    return 0;
}
