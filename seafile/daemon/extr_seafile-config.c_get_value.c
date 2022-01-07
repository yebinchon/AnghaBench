
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int gboolean ;


 int FALSE ;
 char* g_strdup (char*) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;

__attribute__((used)) static gboolean
get_value (sqlite3_stmt *stmt, void *data)
{
    char **p_value = data;

    *p_value = g_strdup((char *) sqlite3_column_text (stmt, 0));

    return FALSE;
}
