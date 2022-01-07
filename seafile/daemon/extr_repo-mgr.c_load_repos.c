
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int SeafRepoManager ;


 int load_repo_cb ;
 int * open_db (int *,char const*) ;
 int remove_deleted_repo ;
 int seaf_warning (char*) ;
 scalar_t__ sqlite_foreach_selected_row (int *,char*,int ,int *) ;

__attribute__((used)) static void
load_repos (SeafRepoManager *manager, const char *seaf_dir)
{
    sqlite3 *db = open_db(manager, seaf_dir);
    if (!db) return;

    char *sql;

    sql = "SELECT repo_id FROM DeletedRepo";
    if (sqlite_foreach_selected_row (db, sql, remove_deleted_repo, manager) < 0) {
        seaf_warning ("Error removing deleted repos.\n");
        return;
    }

    sql = "SELECT repo_id FROM Repo;";
    if (sqlite_foreach_selected_row (db, sql, load_repo_cb, manager) < 0) {
        seaf_warning ("Error read repo db.\n");
        return;
    }
}
