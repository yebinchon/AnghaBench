
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* lv_used_next; struct TYPE_4__* lv_used_prev; } ;
typedef TYPE_1__ list_T ;


 scalar_t__ alloc_clear (int) ;
 TYPE_1__* first_list ;

list_T *
list_alloc()
{
    list_T *l;

    l = (list_T *)alloc_clear(sizeof(list_T));
    if (l != ((void*)0))
    {

 if (first_list != ((void*)0))
     first_list->lv_used_prev = l;
 l->lv_used_prev = ((void*)0);
 l->lv_used_next = first_list;
 first_list = l;
    }
    return l;
}
