#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {size_t last_deleted; size_t last_added; size_t total_size; int /*<<< orphan*/  timeout; TYPE_1__* entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  time; } ;
typedef  TYPE_2__ Ping_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Ping_Array *array)
{
    while (array->last_deleted != array->last_added) {
        uint32_t index = array->last_deleted % array->total_size;

        if (!FUNC1(array->entries[index].time, array->timeout))
            break;

        FUNC0(array, index);
        ++array->last_deleted;
    }
}