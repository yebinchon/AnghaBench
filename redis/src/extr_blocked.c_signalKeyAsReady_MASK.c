#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_7__ {int /*<<< orphan*/  ready_keys; int /*<<< orphan*/  blocking_keys; } ;
typedef  TYPE_1__ redisDb ;
struct TYPE_8__ {TYPE_1__* db; int /*<<< orphan*/ * key; } ;
typedef  TYPE_2__ readyList ;
struct TYPE_9__ {int /*<<< orphan*/  ready_keys; } ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* FUNC5 (int) ; 

void FUNC6(redisDb *db, robj *key) {
    readyList *rl;

    /* No clients blocking for this key? No need to queue it. */
    if (FUNC1(db->blocking_keys,key) == NULL) return;

    /* Key was already signaled? No need to queue it again. */
    if (FUNC1(db->ready_keys,key) != NULL) return;

    /* Ok, we need to queue this key into server.ready_keys. */
    rl = FUNC5(sizeof(*rl));
    rl->key = key;
    rl->db = db;
    FUNC2(key);
    FUNC3(server.ready_keys,rl);

    /* We also add the key in the db->ready_keys dictionary in order
     * to avoid adding it multiple times into a list with a simple O(1)
     * check. */
    FUNC2(key);
    FUNC4(FUNC0(db->ready_keys,key,NULL) == DICT_OK);
}