#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  running_object; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptd; } ;
struct TYPE_8__ {scalar_t__ sink_id; int /*<<< orphan*/  stgmedium; TYPE_1__ fmtetc; int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ DataCacheEntry ;
typedef  TYPE_3__ DataCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(DataCache *cache, DataCacheEntry *cache_entry)
{
    FUNC5(&cache_entry->entry);
    FUNC0(cache_entry->fmtetc.ptd);
    FUNC4(&cache_entry->stgmedium);
    if(cache_entry->sink_id)
        FUNC3(cache->running_object, cache_entry->sink_id);

    FUNC2(FUNC1(), 0, cache_entry);
}