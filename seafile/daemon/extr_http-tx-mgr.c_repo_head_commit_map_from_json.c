
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int text; } ;
typedef TYPE_1__ json_error_t ;
typedef scalar_t__ gint64 ;
typedef int GHashTable ;


 scalar_t__ JSON_STRING ;
 int g_free ;
 int g_hash_table_destroy (int *) ;
 int * g_hash_table_new_full (int ,int ,int ,int ) ;
 int g_hash_table_replace (int *,int ,int ) ;
 int g_str_equal ;
 int g_str_hash ;
 int g_strdup (char const*) ;
 int json_decref (int *) ;
 int * json_loadb (char const*,size_t,int ,TYPE_1__*) ;
 void* json_object_iter (int *) ;
 char* json_object_iter_key (void*) ;
 void* json_object_iter_next (int *,void*) ;
 int * json_object_iter_value (void*) ;
 char const* json_string_value (int *) ;
 scalar_t__ json_typeof (int *) ;
 int seaf_warning (char*,...) ;

__attribute__((used)) static GHashTable *
repo_head_commit_map_from_json (const char *json_str, gint64 len)
{
    json_t *object;
    json_error_t jerror;
    GHashTable *ret;

    object = json_loadb (json_str, (size_t)len, 0, &jerror);
    if (!object) {
        seaf_warning ("Failed to load json: %s\n", jerror.text);
        return ((void*)0);
    }

    ret = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, g_free);

    void *iter = json_object_iter (object);
    const char *key;
    json_t *value;
    while (iter) {
        key = json_object_iter_key (iter);
        value = json_object_iter_value (iter);
        if (json_typeof(value) != JSON_STRING) {
            seaf_warning ("Bad json object format when parsing head commit id map.\n");
            g_hash_table_destroy (ret);
            goto out;
        }
        g_hash_table_replace (ret, g_strdup (key), g_strdup(json_string_value(value)));
        iter = json_object_iter_next (object, iter);
    }

out:
    json_decref (object);
    return ret;
}
