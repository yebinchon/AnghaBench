
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_7__ {TYPE_1__* seaf; TYPE_2__* priv; } ;
struct TYPE_6__ {int db_lock; int db; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_3__ SeafBranchManager ;


 int FALSE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_db_statement_exists (int ,char*,int *,int,char*,char const*,char*,char const*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,char const*) ;
 int sqlite_check_for_existence (int ,char*) ;

gboolean
seaf_branch_manager_branch_exists (SeafBranchManager *mgr,
                                   const char *repo_id,
                                   const char *name)
{

    char *sql;
    gboolean ret;

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = sqlite3_mprintf ("SELECT name FROM Branch WHERE name = %Q "
                           "AND repo_id='%s'", name, repo_id);
    ret = sqlite_check_for_existence (mgr->priv->db, sql);
    sqlite3_free (sql);

    pthread_mutex_unlock (&mgr->priv->db_lock);
    return ret;
}
