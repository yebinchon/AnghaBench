
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int GHashTable ;


 int g_free ;
 int g_hash_table_destroy (int *) ;
 int g_hash_table_insert (int *,int ,void*) ;
 int * g_hash_table_new_full (int ,int ,int ,int *) ;
 int g_str_equal ;
 int g_str_hash ;
 int g_strdup (int ) ;
 int * json_array_get (int *,size_t) ;
 size_t json_array_size (int *) ;
 scalar_t__ json_integer_value (int *) ;
 int * json_object_get (int *,char*) ;
 int json_string_value (int *) ;

__attribute__((used)) static GHashTable *
parse_locked_file_list (json_t *array)
{
    GHashTable *ret = ((void*)0);
    size_t n, i;
    json_t *obj, *string, *integer;

    ret = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, ((void*)0));
    if (!ret) {
        return ((void*)0);
    }

    n = json_array_size (array);
    for (i = 0; i < n; ++i) {
        obj = json_array_get (array, i);
        string = json_object_get (obj, "path");
        if (!string) {
            g_hash_table_destroy (ret);
            return ((void*)0);
        }
        integer = json_object_get (obj, "by_me");
        if (!integer) {
            g_hash_table_destroy (ret);
            return ((void*)0);
        }
        g_hash_table_insert (ret,
                             g_strdup(json_string_value(string)),
                             (void*)(long)json_integer_value(integer));
    }

    return ret;
}
