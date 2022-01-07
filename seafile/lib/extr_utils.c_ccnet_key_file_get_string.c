
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;
typedef int GKeyFile ;


 int g_free (char*) ;
 char* g_key_file_get_string (int *,char const*,char const*,int *) ;
 int g_key_file_has_key (int *,char const*,char const*,int *) ;

gchar*
ccnet_key_file_get_string (GKeyFile *keyf,
                           const char *category,
                           const char *key)
{
    gchar *v;

    if (!g_key_file_has_key (keyf, category, key, ((void*)0)))
        return ((void*)0);

    v = g_key_file_get_string (keyf, category, key, ((void*)0));
    if (v != ((void*)0) && v[0] == '\0') {
        g_free(v);
        return ((void*)0);
    }

    return v;
}
