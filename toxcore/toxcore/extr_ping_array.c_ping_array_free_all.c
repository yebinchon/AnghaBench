
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int last_deleted; int last_added; int total_size; int * entries; } ;
typedef TYPE_1__ Ping_Array ;


 int clear_entry (TYPE_1__*,int) ;
 int free (int *) ;

void ping_array_free_all(Ping_Array *array)
{
    while (array->last_deleted != array->last_added) {
        uint32_t index = array->last_deleted % array->total_size;
        clear_entry(array, index);
        ++array->last_deleted;
    }

    free(array->entries);
    array->entries = ((void*)0);
}
