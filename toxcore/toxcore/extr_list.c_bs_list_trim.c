
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; int capacity; } ;
typedef TYPE_1__ BS_LIST ;


 int resize (TYPE_1__*,int ) ;

int bs_list_trim(BS_LIST *list)
{
    if (!resize(list, list->n)) {
        return 0;
    }

    list->capacity = list->n;
    return 1;
}
