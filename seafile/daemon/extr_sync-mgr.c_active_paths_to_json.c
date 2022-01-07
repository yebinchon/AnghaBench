
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef char* gpointer ;
typedef size_t SyncStatus ;
typedef int GHashTableIter ;
typedef int GHashTable ;


 int g_hash_table_iter_init (int *,int *) ;
 scalar_t__ g_hash_table_iter_next (int *,char**,char**) ;
 int * json_array () ;
 int json_array_append (int *,int *) ;
 int * json_object () ;
 int json_object_set (int *,char*,int ) ;
 int json_string (char*) ;
 char** path_status_tbl ;

__attribute__((used)) static json_t *
active_paths_to_json (GHashTable *paths)
{
    json_t *array = ((void*)0), *obj = ((void*)0);
    GHashTableIter iter;
    gpointer key, value;
    char *path;
    SyncStatus status;

    array = json_array ();

    g_hash_table_iter_init (&iter, paths);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        path = key;
        status = (SyncStatus)value;

        obj = json_object ();
        json_object_set (obj, "path", json_string(path));
        json_object_set (obj, "status", json_string(path_status_tbl[status]));

        json_array_append (array, obj);
    }

    return array;
}
