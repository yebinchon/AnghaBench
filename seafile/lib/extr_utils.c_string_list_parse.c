
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GList ;


 int * g_list_prepend (int *,int ) ;
 int * g_list_reverse (int *) ;
 int g_strdup (char*) ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char const*,int ) ;

GList *
string_list_parse (const char *list_in_str, const char *seperator)
{
    if (!list_in_str)
        return ((void*)0);

    GList *list = ((void*)0);
    char **array = g_strsplit (list_in_str, seperator, 0);
    char **ptr;

    for (ptr = array; *ptr; ptr++) {
        list = g_list_prepend (list, g_strdup(*ptr));
    }
    list = g_list_reverse (list);

    g_strfreev (array);
    return list;
}
