#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_11__ {int /*<<< orphan*/  blocking_keys; } ;
typedef  TYPE_2__ redisDb ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int /*<<< orphan*/  LOOKUP_NOTOUCH ; 
 scalar_t__ OBJ_LIST ; 
 scalar_t__ OBJ_STREAM ; 
 scalar_t__ OBJ_ZSET ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 

void FUNC6(redisDb *db) {
    dictEntry *de;
    dictIterator *di = FUNC1(db->blocking_keys);
    while((de = FUNC2(di)) != NULL) {
        robj *key = FUNC0(de);
        robj *value = FUNC4(db,key,LOOKUP_NOTOUCH);
        if (value && (value->type == OBJ_LIST ||
                      value->type == OBJ_STREAM ||
                      value->type == OBJ_ZSET))
            FUNC5(db, key);
    }
    FUNC3(di);
}