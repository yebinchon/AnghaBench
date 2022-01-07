
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int n; int capacity; int* data; int element_size; int* ids; } ;
typedef TYPE_1__ BS_LIST ;


 int find (TYPE_1__*,int const*) ;
 int memcpy (int*,int const*,int) ;
 int memmove (int*,int*,int) ;
 int resize (TYPE_1__*,int const) ;

int bs_list_add(BS_LIST *list, const uint8_t *data, int id)
{


    int i = find(list, data);

    if (i >= 0) {

        return 0;
    }

    i = ~i;


    if (list->n == list->capacity) {

        const uint32_t new_capacity = list->n + list->n / 2 + 1;

        if (!resize(list, new_capacity)) {
            return 0;
        }

        list->capacity = new_capacity;
    }


    memmove(list->data + (i + 1) * list->element_size, list->data + i * list->element_size,
            (list->n - i) * list->element_size);
    memcpy(list->data + i * list->element_size, data, list->element_size);


    memmove(&list->ids[i + 1], &list->ids[i], (list->n - i) * sizeof(int));
    list->ids[i] = id;


    list->n++;

    return 1;
}
