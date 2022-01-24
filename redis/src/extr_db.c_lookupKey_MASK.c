#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lru; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_10__ {int /*<<< orphan*/  dict; } ;
typedef  TYPE_2__ redisDb ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_11__ {int maxmemory_policy; } ;

/* Variables and functions */
 int LOOKUP_NOTOUCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int MAXMEMORY_FLAG_LFU ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

robj *FUNC5(redisDb *db, robj *key, int flags) {
    dictEntry *de = FUNC1(db->dict,key->ptr);
    if (de) {
        robj *val = FUNC2(de);

        /* Update the access time for the ageing algorithm.
         * Don't do it if we have a saving child, as this will trigger
         * a copy on write madness. */
        if (!FUNC3() && !(flags & LOOKUP_NOTOUCH)){
            if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
                FUNC4(val);
            } else {
                val->lru = FUNC0();
            }
        }
        return val;
    } else {
        return NULL;
    }
}