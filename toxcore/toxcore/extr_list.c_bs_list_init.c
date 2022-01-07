
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ capacity; int * ids; int * data; scalar_t__ element_size; scalar_t__ n; } ;
typedef TYPE_1__ BS_LIST ;


 int resize (TYPE_1__*,scalar_t__) ;

int bs_list_init(BS_LIST *list, uint32_t element_size, uint32_t initial_capacity)
{

    list->n = 0;
    list->element_size = element_size;
    list->capacity = 0;
    list->data = ((void*)0);
    list->ids = ((void*)0);

    if (initial_capacity != 0) {
        if (!resize(list, initial_capacity)) {
            return 0;
        }
    }

    list->capacity = initial_capacity;

    return 1;
}
