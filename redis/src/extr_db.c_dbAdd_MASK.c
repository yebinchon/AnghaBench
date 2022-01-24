#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_13__ {int /*<<< orphan*/  dict; } ;
typedef  TYPE_2__ redisDb ;
struct TYPE_14__ {scalar_t__ cluster_enabled; } ;

/* Variables and functions */
 int DICT_OK ; 
 scalar_t__ OBJ_LIST ; 
 scalar_t__ OBJ_ZSET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(redisDb *db, robj *key, robj *val) {
    sds copy = FUNC1(key->ptr);
    int retval = FUNC0(db->dict, copy, val);

    FUNC2(NULL,key,retval == DICT_OK);
    if (val->type == OBJ_LIST ||
        val->type == OBJ_ZSET)
        FUNC3(db, key);
    if (server.cluster_enabled) FUNC4(key);
}