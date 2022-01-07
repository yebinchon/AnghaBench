
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_10__ {int repo_id; int name; int commit_id; } ;
struct TYPE_9__ {TYPE_2__* seaf; TYPE_1__* priv; } ;
struct TYPE_8__ {int db; } ;
struct TYPE_7__ {int db_lock; int * db; } ;
typedef TYPE_3__ SeafBranchManager ;
typedef TYPE_4__ SeafBranch ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_db_statement_query (int ,char*,int,char*,int ,char*,int ,char*,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int ,int ) ;
 int sqlite_query_exec (int *,char*) ;

int
seaf_branch_manager_update_branch (SeafBranchManager *mgr, SeafBranch *branch)
{

    sqlite3 *db;
    char *sql;

    pthread_mutex_lock (&mgr->priv->db_lock);

    db = mgr->priv->db;
    sql = sqlite3_mprintf ("UPDATE Branch SET commit_id = %Q "
                           "WHERE name = %Q AND repo_id = %Q",
                           branch->commit_id, branch->name, branch->repo_id);
    sqlite_query_exec (db, sql);
    sqlite3_free (sql);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    return 0;
}
