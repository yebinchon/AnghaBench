
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
typedef TYPE_1__ GList ;


 int g_free (scalar_t__) ;
 TYPE_1__* g_list_delete_link (TYPE_1__*,TYPE_1__*) ;
 int g_return_val_if_fail (int ,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char const*) ;

GList *
string_list_remove (GList *str_list, const char *string)
{
    g_return_val_if_fail (string != ((void*)0), str_list);

    GList *ptr;

    for (ptr = str_list; ptr; ptr = ptr->next) {
        if (strcmp((char *)ptr->data, string) == 0) {
            g_free (ptr->data);
            return g_list_delete_link (str_list, ptr);
        }
    }
    return str_list;
}
