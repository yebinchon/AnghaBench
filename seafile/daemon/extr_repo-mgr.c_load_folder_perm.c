
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int gboolean ;
typedef int GList ;
typedef int FolderPerm ;


 int TRUE ;
 int * folder_perm_new (char const*,char const*) ;
 int * g_list_prepend (int *,int *) ;
 scalar_t__ sqlite3_column_text (int *,int) ;

__attribute__((used)) static gboolean
load_folder_perm (sqlite3_stmt *stmt, void *data)
{
    GList **p_perms = data;
    const char *path, *permission;

    path = (const char *)sqlite3_column_text (stmt, 0);
    permission = (const char *)sqlite3_column_text (stmt, 1);

    FolderPerm *perm = folder_perm_new (path, permission);
    *p_perms = g_list_prepend (*p_perms, perm);

    return TRUE;
}
