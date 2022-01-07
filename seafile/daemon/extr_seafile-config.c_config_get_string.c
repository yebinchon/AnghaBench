
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int sql ;


 int get_value ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ sqlite_foreach_selected_row (int *,char*,int ,char**) ;

__attribute__((used)) static char *
config_get_string (sqlite3 *config_db, const char *key)
{
    char sql[256];
    char *value = ((void*)0);

    snprintf (sql, sizeof(sql),
              "SELECT value FROM Config WHERE key='%s';",
              key);
    if (sqlite_foreach_selected_row (config_db, sql,
                                     get_value, &value) < 0)
        return ((void*)0);

    return value;
}
