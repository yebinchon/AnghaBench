
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* seaf; TYPE_1__* priv; } ;
struct TYPE_6__ {int db; int seaf_dir; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_3__ SeafBranchManager ;


 int BRANCH_DB ;



 char* g_build_filename (int ,int ,int *) ;
 int g_critical (char*) ;
 int g_free (char*) ;
 int seaf_db_query (int ,char*) ;
 int seaf_db_type (int ) ;
 scalar_t__ sqlite_open_db (char*,int *) ;
 scalar_t__ sqlite_query_exec (int ,char const*) ;

__attribute__((used)) static int
open_db (SeafBranchManager *mgr)
{


    char *db_path;
    const char *sql;

    db_path = g_build_filename (mgr->seaf->seaf_dir, BRANCH_DB, ((void*)0));
    if (sqlite_open_db (db_path, &mgr->priv->db) < 0) {
        g_critical ("[Branch mgr] Failed to open branch db\n");
        g_free (db_path);
        return -1;
    }
    g_free (db_path);

    sql = "CREATE TABLE IF NOT EXISTS Branch ("
          "name TEXT, repo_id TEXT, commit_id TEXT);";
    if (sqlite_query_exec (mgr->priv->db, sql) < 0)
        return -1;

    sql = "CREATE INDEX IF NOT EXISTS branch_index ON Branch(repo_id, name);";
    if (sqlite_query_exec (mgr->priv->db, sql) < 0)
        return -1;
    return 0;
}
