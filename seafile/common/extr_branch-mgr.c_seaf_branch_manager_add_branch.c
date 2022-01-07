
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sql ;
typedef scalar_t__ gboolean ;
struct TYPE_10__ {int commit_id; int repo_id; int name; } ;
struct TYPE_9__ {TYPE_2__* seaf; TYPE_1__* priv; } ;
struct TYPE_8__ {int * db; } ;
struct TYPE_7__ {int db_lock; int db; } ;
typedef int SeafDB ;
typedef TYPE_3__ SeafBranchManager ;
typedef TYPE_4__ SeafBranch ;


 scalar_t__ SEAF_DB_TYPE_PGSQL ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ seaf_db_statement_exists (int *,char*,scalar_t__*,int,char*,int ,char*,int ) ;
 int seaf_db_statement_query (int *,char*,int,char*,int ,char*,int ,char*,int ) ;
 scalar_t__ seaf_db_type (int *) ;
 int sqlite3_snprintf (int,char*,char*,int ,int ,...) ;
 scalar_t__ sqlite_check_for_existence (int ,char*) ;
 int sqlite_query_exec (int ,char*) ;

int
seaf_branch_manager_add_branch (SeafBranchManager *mgr, SeafBranch *branch)
{

    char sql[256];

    pthread_mutex_lock (&mgr->priv->db_lock);

    sqlite3_snprintf (sizeof(sql), sql,
                      "SELECT 1 FROM Branch WHERE name=%Q and repo_id=%Q",
                      branch->name, branch->repo_id);
    if (sqlite_check_for_existence (mgr->priv->db, sql))
        sqlite3_snprintf (sizeof(sql), sql,
                          "UPDATE Branch SET commit_id=%Q WHERE "
                          "name=%Q and repo_id=%Q",
                          branch->commit_id, branch->name, branch->repo_id);
    else
        sqlite3_snprintf (sizeof(sql), sql,
                          "INSERT INTO Branch VALUES (%Q, %Q, %Q)",
                          branch->name, branch->repo_id, branch->commit_id);

    sqlite_query_exec (mgr->priv->db, sql);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    return 0;
}
