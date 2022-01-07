
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sql ;
struct TYPE_12__ {scalar_t__ data; struct TYPE_12__* next; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ GList ;
typedef scalar_t__ FolderPermType ;
typedef int FolderPerm ;


 scalar_t__ FOLDER_PERM_TYPE_GROUP ;
 scalar_t__ FOLDER_PERM_TYPE_USER ;
 int comp_folder_perms ;
 int folder_perm_free (int *) ;
 int g_list_free (TYPE_3__*) ;
 TYPE_3__* g_list_sort (TYPE_3__*,int ) ;
 int g_return_val_if_fail (int,int *) ;
 int load_folder_perm ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 scalar_t__ sqlite_foreach_selected_row (int ,char*,int ,TYPE_3__**) ;

__attribute__((used)) static GList *
load_folder_perms_for_repo (SeafRepoManager *mgr,
                            const char *repo_id,
                            FolderPermType type)
{
    GList *perms = ((void*)0);
    char sql[256];

    g_return_val_if_fail ((type == FOLDER_PERM_TYPE_USER ||
                           type == FOLDER_PERM_TYPE_GROUP),
                          ((void*)0));

    if (type == FOLDER_PERM_TYPE_USER)
        sqlite3_snprintf (sizeof(sql), sql,
                          "SELECT path, permission FROM FolderUserPerms "
                          "WHERE repo_id = '%q'",
                          repo_id);
    else
        sqlite3_snprintf (sizeof(sql), sql,
                          "SELECT path, permission FROM FolderGroupPerms "
                          "WHERE repo_id = '%q'",
                          repo_id);

    pthread_mutex_lock (&mgr->priv->db_lock);

    if (sqlite_foreach_selected_row (mgr->priv->db, sql,
                                     load_folder_perm, &perms) < 0) {
        pthread_mutex_unlock (&mgr->priv->db_lock);
        GList *ptr;
        for (ptr = perms; ptr; ptr = ptr->next)
            folder_perm_free ((FolderPerm *)ptr->data);
        g_list_free (perms);
        return ((void*)0);
    }

    pthread_mutex_unlock (&mgr->priv->db_lock);


    perms = g_list_sort (perms, comp_folder_perms);

    return perms;
}
