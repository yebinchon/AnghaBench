
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
typedef size_t uint32_t ;
struct TYPE_6__ {size_t total_size; TYPE_1__* entries; int timeout; } ;
struct TYPE_5__ {size_t ping_id; size_t length; int * data; int time; } ;
typedef TYPE_2__ Ping_Array ;


 int clear_entry (TYPE_2__*,size_t) ;
 scalar_t__ is_timeout (int ,int ) ;
 int memcpy (int *,int *,size_t) ;

int ping_array_check(uint8_t *data, uint32_t length, Ping_Array *array, uint64_t ping_id)
{
    if (ping_id == 0)
        return -1;

    uint32_t index = ping_id % array->total_size;

    if (array->entries[index].ping_id != ping_id)
        return -1;

    if (is_timeout(array->entries[index].time, array->timeout))
        return -1;

    if (array->entries[index].length > length)
        return -1;

    if (array->entries[index].data == ((void*)0))
        return -1;

    memcpy(data, array->entries[index].data, array->entries[index].length);
    uint32_t len = array->entries[index].length;
    clear_entry(array, index);
    return len;
}
