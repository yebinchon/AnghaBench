
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int gboolean ;
typedef int GList ;


 int TRUE ;
 int * g_list_prepend (int *,char*) ;
 char* g_strdup (char const*) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;

__attribute__((used)) static gboolean
get_garbage_repo_id (sqlite3_stmt *stmt, void *vid_list)
{
    GList **ret = vid_list;
    char *repo_id;

    repo_id = g_strdup((const char *)sqlite3_column_text (stmt, 0));
    *ret = g_list_prepend (*ret, repo_id);

    return TRUE;
}
