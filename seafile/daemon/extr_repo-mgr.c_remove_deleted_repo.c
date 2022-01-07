
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int gboolean ;
typedef int SeafRepoManager ;


 int TRUE ;
 int seaf_repo_manager_remove_repo_ondisk (int *,char const*,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;

__attribute__((used)) static gboolean
remove_deleted_repo (sqlite3_stmt *stmt, void *vmanager)
{
    SeafRepoManager *manager = vmanager;
    const char *repo_id;

    repo_id = (const char *) sqlite3_column_text (stmt, 0);

    seaf_repo_manager_remove_repo_ondisk (manager, repo_id, TRUE);

    return TRUE;
}
