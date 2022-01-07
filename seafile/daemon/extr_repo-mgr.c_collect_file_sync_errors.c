
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int gint64 ;
typedef int gboolean ;
typedef int SeafileFileSyncError ;
typedef int GList ;


 int SEAFILE_TYPE_FILE_SYNC_ERROR ;
 int TRUE ;
 int * g_list_prepend (int *,int *) ;
 int * g_object_new (int ,char*,int,char*,char const*,char*,char const*,char*,char const*,char*,int,char*,int ,int *) ;
 int sqlite3_column_int (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;

__attribute__((used)) static gboolean
collect_file_sync_errors (sqlite3_stmt *stmt, void *data)
{
    GList **pret = data;
    const char *repo_id, *repo_name, *path;
    int id, err_id;
    gint64 timestamp;
    SeafileFileSyncError *error;

    id = sqlite3_column_int (stmt, 0);
    repo_id = (const char *)sqlite3_column_text (stmt, 1);
    repo_name = (const char *)sqlite3_column_text (stmt, 2);
    path = (const char *)sqlite3_column_text (stmt, 3);
    err_id = sqlite3_column_int (stmt, 4);
    timestamp = sqlite3_column_int64 (stmt, 5);

    error = g_object_new (SEAFILE_TYPE_FILE_SYNC_ERROR,
                          "id", id,
                          "repo_id", repo_id,
                          "repo_name", repo_name,
                          "path", path,
                          "err_id", err_id,
                          "timestamp", timestamp,
                          ((void*)0));
    *pret = g_list_prepend (*pret, error);

    return TRUE;
}
