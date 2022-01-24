#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_7__ {size_t last_added; size_t total_size; size_t last_deleted; TYPE_1__* entries; } ;
struct TYPE_6__ {size_t length; size_t ping_id; int /*<<< orphan*/  time; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ Ping_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

uint64_t FUNC6(Ping_Array *array, const uint8_t *data, uint32_t length)
{
    FUNC3(array);
    uint32_t index = array->last_added % array->total_size;

    if (array->entries[index].data != NULL) {
        array->last_deleted = array->last_added - array->total_size;
        FUNC0(array, index);
    }

    array->entries[index].data = FUNC1(length);

    if (array->entries[index].data == NULL)
        return 0;

    FUNC2(array->entries[index].data, data, length);
    array->entries[index].length = length;
    array->entries[index].time = FUNC5();
    ++array->last_added;
    uint64_t ping_id = FUNC4();
    ping_id /= array->total_size;
    ping_id *= array->total_size;
    ping_id += index;

    if (ping_id == 0)
        ping_id += array->total_size;

    array->entries[index].ping_id = ping_id;
    return ping_id;
}