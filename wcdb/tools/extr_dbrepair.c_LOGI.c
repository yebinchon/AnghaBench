
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITERK_OK ;
 int print_log (int ,int ,char const*) ;
 int sqliterk_loglevel_info ;

__attribute__((used)) static void inline LOGI(const char *msg)
{
 print_log(sqliterk_loglevel_info, SQLITERK_OK, msg);
}
