
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int hashmap_ensure_allocated (int **,int *) ;
 int string_strv_hash_ops ;
 int string_strv_hashmap_put_internal (int *,char const*,char const*) ;

int string_strv_hashmap_put(Hashmap **h, const char *key, const char *value) {
        int r;

        r = hashmap_ensure_allocated(h, &string_strv_hash_ops);
        if (r < 0)
                return r;

        return string_strv_hashmap_put_internal(*h, key, value);
}
