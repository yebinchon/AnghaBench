
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int data; struct TYPE_3__* next; } ;
typedef TYPE_1__ GList ;


 int FALSE ;
 int TRUE ;
 scalar_t__ g_strcmp0 (char const*,int ) ;

gboolean
string_list_is_exists (GList *str_list, const char *string)
{
    GList *ptr;
    for (ptr = str_list; ptr; ptr = ptr->next) {
        if (g_strcmp0(string, ptr->data) == 0)
            return TRUE;
    }
    return FALSE;
}
