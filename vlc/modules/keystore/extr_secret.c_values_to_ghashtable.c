
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GHashTable ;


 unsigned int KEY_MAX ;
 int g_hash_table_insert (int *,int ,int ) ;
 int * g_hash_table_new_full (int ,int ,int *,int *) ;
 int g_str_equal ;
 int g_str_hash ;
 scalar_t__* ppsz_keys ;

__attribute__((used)) static GHashTable *
values_to_ghashtable(const char *const ppsz_values[KEY_MAX])
{
    GHashTable *p_hash = g_hash_table_new_full(g_str_hash, g_str_equal,
                                               ((void*)0), ((void*)0));
    if (!p_hash)
        return ((void*)0);
    for (unsigned int i = 0; i < KEY_MAX; ++i)
    {
        if (ppsz_values[i])
            g_hash_table_insert(p_hash, (gpointer) ppsz_keys[i],
                                (gpointer) ppsz_values[i]);
    }
    return p_hash;
}
