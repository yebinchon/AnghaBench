
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafFilelockManager ;
typedef int GList ;


 int _LOCKED_AUTO ;
 int collect_auto_locked_files ;
 int * g_list_reverse (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ) ;
 int sqlite_foreach_selected_row (int ,char*,int ,int **) ;

GList *
seaf_filelock_manager_get_auto_locked_files (SeafFilelockManager *mgr)
{
    char *sql;
    GList *ret = ((void*)0);

    pthread_mutex_lock (&mgr->priv->db_lock);

    sql = sqlite3_mprintf ("SELECT repo_id, path FROM ServerLockedFiles "
                           "WHERE locked_by_me = %d", _LOCKED_AUTO);
    sqlite_foreach_selected_row (mgr->priv->db, sql,
                                 collect_auto_locked_files,
                                 &ret);

    pthread_mutex_unlock (&mgr->priv->db_lock);

    ret = g_list_reverse (ret);

    sqlite3_free (sql);
    return ret;
}
