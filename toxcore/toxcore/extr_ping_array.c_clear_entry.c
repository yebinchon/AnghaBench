
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {TYPE_1__* entries; } ;
struct TYPE_4__ {scalar_t__ ping_id; scalar_t__ time; scalar_t__ length; int * data; } ;
typedef TYPE_2__ Ping_Array ;


 int free (int *) ;

__attribute__((used)) static void clear_entry(Ping_Array *array, uint32_t index)
{
    free(array->entries[index].data);
    array->entries[index].data = ((void*)0);
    array->entries[index].length =
        array->entries[index].time =
            array->entries[index].ping_id = 0;
}
