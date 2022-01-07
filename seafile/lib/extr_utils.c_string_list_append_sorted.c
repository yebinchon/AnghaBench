
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GList ;
typedef int GCompareDataFunc ;


 int * g_list_insert_sorted_with_data (int *,int ,int ,int *) ;
 int g_return_val_if_fail (int ,int *) ;
 scalar_t__ g_strcmp0 ;
 int g_strdup (char const*) ;
 scalar_t__ string_list_is_exists (int *,char const*) ;

GList *
string_list_append_sorted (GList *str_list, const char *string)
{
    g_return_val_if_fail (string != ((void*)0), str_list);

    if (string_list_is_exists(str_list, string))
        return str_list;

    str_list = g_list_insert_sorted_with_data (str_list, g_strdup(string),
                                 (GCompareDataFunc)g_strcmp0, ((void*)0));
    return str_list;
}
