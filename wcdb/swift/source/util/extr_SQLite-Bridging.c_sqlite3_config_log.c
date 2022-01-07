
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_global_log ;


 int SQLITE_CONFIG_LOG ;
 int sqlite3_config (int ,int ,void*) ;

int sqlite3_config_log(sqlite3_global_log a, void *b)
{
    return sqlite3_config(SQLITE_CONFIG_LOG, a, b);
}
