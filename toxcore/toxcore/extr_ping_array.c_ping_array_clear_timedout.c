
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {size_t last_deleted; size_t last_added; size_t total_size; int timeout; TYPE_1__* entries; } ;
struct TYPE_5__ {int time; } ;
typedef TYPE_2__ Ping_Array ;


 int clear_entry (TYPE_2__*,size_t) ;
 int is_timeout (int ,int ) ;

__attribute__((used)) static void ping_array_clear_timedout(Ping_Array *array)
{
    while (array->last_deleted != array->last_added) {
        uint32_t index = array->last_deleted % array->total_size;

        if (!is_timeout(array->entries[index].time, array->timeout))
            break;

        clear_entry(array, index);
        ++array->last_deleted;
    }
}
