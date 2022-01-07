
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
typedef TYPE_1__* gpointer ;
struct TYPE_10__ {int hash_lock; int info_hash; int handle_hash; } ;
struct TYPE_9__ {int status; } ;
typedef TYPE_2__ SeafWTMonitorPriv ;
typedef TYPE_1__ RepoWatchInfo ;
typedef int * HANDLE ;


 int WT_EVENT_SCAN_DIR ;
 int add_event_to_queue (int ,int ,char*,int *) ;
 TYPE_1__* create_repo_watch_info (char const*,char const*) ;
 int g_free (int *) ;
 int g_hash_table_insert (int ,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* g_strdup (char const*) ;
 int * get_handle_of_path (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_warning (char*,char const*) ;
 int * wchar_from_utf8 (char const*) ;

__attribute__((used)) static HANDLE add_watch (SeafWTMonitorPriv *priv,
                         const char *repo_id,
                         const char *worktree)
{
    HANDLE dir_handle = ((void*)0);
    wchar_t *path = ((void*)0);
    RepoWatchInfo *info;


    path = wchar_from_utf8 (worktree);

    dir_handle = get_handle_of_path (path);
    if (!dir_handle) {
        seaf_warning ("failed to open handle for worktree "
                      "of repo  %s\n", repo_id);
        g_free (path);
        return ((void*)0);
    }
    g_free (path);

    pthread_mutex_lock (&priv->hash_lock);
    g_hash_table_insert (priv->handle_hash,
                         g_strdup(repo_id), (gpointer)dir_handle);

    info = create_repo_watch_info (repo_id, worktree);
    g_hash_table_insert (priv->info_hash, (gpointer)dir_handle, info);
    pthread_mutex_unlock (&priv->hash_lock);

    add_event_to_queue (info->status, WT_EVENT_SCAN_DIR, "", ((void*)0));

    return dir_handle;
}
