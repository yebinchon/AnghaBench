
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GList ;


 int * g_list_append (int *,int ) ;
 int g_return_val_if_fail (int ,int *) ;
 int g_strdup (char const*) ;
 scalar_t__ string_list_is_exists (int *,char const*) ;

GList*
string_list_append (GList *str_list, const char *string)
{
    g_return_val_if_fail (string != ((void*)0), str_list);

    if (string_list_is_exists(str_list, string))
        return str_list;

    str_list = g_list_append (str_list, g_strdup(string));
    return str_list;
}
