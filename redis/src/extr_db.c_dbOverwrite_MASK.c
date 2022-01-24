#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  lru; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_12__ {int /*<<< orphan*/  dict; } ;
typedef  TYPE_2__ redisDb ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_13__ {int maxmemory_policy; scalar_t__ lazyfree_lazy_server_del; } ;

/* Variables and functions */
 int MAXMEMORY_FLAG_LFU ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC6(redisDb *db, robj *key, robj *val) {
    dictEntry *de = FUNC0(db->dict,key->ptr);

    FUNC5(NULL,key,de != NULL);
    dictEntry auxentry = *de;
    robj *old = FUNC2(de);
    if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
        val->lru = old->lru;
    }
    FUNC3(db->dict, de, val);

    if (server.lazyfree_lazy_server_del) {
        FUNC4(old);
        FUNC3(db->dict, &auxentry, NULL);
    }

    FUNC1(db->dict, &auxentry);
}