
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_4__ {struct TYPE_4__* next; int data; } ;
typedef TYPE_1__ GList ;


 int FALSE ;
 int TRUE ;
 scalar_t__ g_strcmp0 (int ,int ) ;

gboolean
string_list_sorted_is_equal (GList *list1, GList *list2)
{
    GList *ptr1 = list1, *ptr2 = list2;

    while (ptr1 && ptr2) {
        if (g_strcmp0(ptr1->data, ptr2->data) != 0)
            break;

        ptr1 = ptr1->next;
        ptr2 = ptr2->next;
    }

    if (!ptr1 && !ptr2)
        return TRUE;
    return FALSE;
}
