
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
typedef size_t uint32_t ;
struct TYPE_7__ {size_t last_added; size_t total_size; size_t last_deleted; TYPE_1__* entries; } ;
struct TYPE_6__ {size_t length; size_t ping_id; int time; int * data; } ;
typedef TYPE_2__ Ping_Array ;


 int clear_entry (TYPE_2__*,size_t) ;
 int * malloc (size_t) ;
 int memcpy (int *,int const*,size_t) ;
 int ping_array_clear_timedout (TYPE_2__*) ;
 size_t random_64b () ;
 int unix_time () ;

uint64_t ping_array_add(Ping_Array *array, const uint8_t *data, uint32_t length)
{
    ping_array_clear_timedout(array);
    uint32_t index = array->last_added % array->total_size;

    if (array->entries[index].data != ((void*)0)) {
        array->last_deleted = array->last_added - array->total_size;
        clear_entry(array, index);
    }

    array->entries[index].data = malloc(length);

    if (array->entries[index].data == ((void*)0))
        return 0;

    memcpy(array->entries[index].data, data, length);
    array->entries[index].length = length;
    array->entries[index].time = unix_time();
    ++array->last_added;
    uint64_t ping_id = random_64b();
    ping_id /= array->total_size;
    ping_id *= array->total_size;
    ping_id += index;

    if (ping_id == 0)
        ping_id += array->total_size;

    array->entries[index].ping_id = ping_id;
    return ping_id;
}
