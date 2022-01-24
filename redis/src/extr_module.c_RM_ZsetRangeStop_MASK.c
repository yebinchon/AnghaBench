#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ztype; int /*<<< orphan*/  zlrs; } ;
typedef  TYPE_1__ RedisModuleKey ;

/* Variables and functions */
 scalar_t__ REDISMODULE_ZSET_RANGE_LEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(RedisModuleKey *key) {
    /* Free resources if needed. */
    if (key->ztype == REDISMODULE_ZSET_RANGE_LEX)
        FUNC1(&key->zlrs);
    /* Setup sensible values so that misused iteration API calls when an
     * iterator is not active will result into something more sensible
     * than crashing. */
    FUNC0(key);
}