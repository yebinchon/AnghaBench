#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  framelogEntry_t ;
struct TYPE_3__ {size_t capacity; int /*<<< orphan*/ * entries; } ;
typedef  TYPE_1__ ZSTD_frameLog ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC2(ZSTD_frameLog* fl)
{
    /* allocate some initial space */
    size_t const FRAMELOG_STARTING_CAPACITY = 16;
    fl->entries = (framelogEntry_t*)FUNC1(
            sizeof(framelogEntry_t) * FRAMELOG_STARTING_CAPACITY);
    if (fl->entries == NULL) return FUNC0(memory_allocation);
    fl->capacity = FRAMELOG_STARTING_CAPACITY;

    return 0;
}