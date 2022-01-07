
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int json_t ;
typedef void* gpointer ;
struct TYPE_7__ {int paths; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int paths_lock; int active_paths; } ;
typedef TYPE_2__ SeafSyncManager ;
typedef int GHashTableIter ;
typedef TYPE_3__ ActivePathsInfo ;


 int JSON_INDENT (int) ;
 int * active_paths_to_json (int ) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,void**,void**) ;
 int * json_array () ;
 int json_array_append (int *,int *) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_object () ;
 int json_object_set (int *,char*,int *) ;
 int * json_string (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_warning (char*) ;

char *
seaf_sync_manager_list_active_paths_json (SeafSyncManager *mgr)
{
    json_t *array = ((void*)0), *obj = ((void*)0), *path_array = ((void*)0);
    GHashTableIter iter;
    gpointer key, value;
    char *repo_id;
    ActivePathsInfo *info;
    char *ret = ((void*)0);

    pthread_mutex_lock (&mgr->priv->paths_lock);

    array = json_array ();

    g_hash_table_iter_init (&iter, mgr->priv->active_paths);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        repo_id = key;
        info = value;

        obj = json_object();
        path_array = active_paths_to_json (info->paths);
        json_object_set (obj, "repo_id", json_string(repo_id));
        json_object_set (obj, "paths", path_array);

        json_array_append (array, obj);
    }

    pthread_mutex_unlock (&mgr->priv->paths_lock);

    ret = json_dumps (array, JSON_INDENT(4));
    if (!ret) {
        seaf_warning ("Failed to convert active paths to json\n");
    }

    json_decref (array);

    return ret;
}
