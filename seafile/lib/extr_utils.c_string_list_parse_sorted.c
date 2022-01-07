
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GList ;
typedef int GCompareFunc ;


 int * g_list_sort (int *,int ) ;
 scalar_t__ g_strcmp0 ;
 int * string_list_parse (char const*,char const*) ;

GList *
string_list_parse_sorted (const char *list_in_str, const char *seperator)
{
    GList *list = string_list_parse (list_in_str, seperator);

    return g_list_sort (list, (GCompareFunc)g_strcmp0);
}
