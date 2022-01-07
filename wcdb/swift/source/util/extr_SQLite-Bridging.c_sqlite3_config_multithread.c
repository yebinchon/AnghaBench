
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_CONFIG_MULTITHREAD ;
 int sqlite3_config (int ) ;

int sqlite3_config_multithread(void)
{
    return sqlite3_config(SQLITE_CONFIG_MULTITHREAD);
}
