#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sds ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 scalar_t__ OBJ_HASH ; 
 scalar_t__ OBJ_SET ; 
 scalar_t__ OBJ_ZSET ; 
 TYPE_1__* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (double,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void *privdata, const dictEntry *de) {
    void **pd = (void**) privdata;
    list *keys = pd[0];
    robj *o = pd[1];
    robj *key, *val = NULL;

    if (o == NULL) {
        sds sdskey = FUNC2(de);
        key = FUNC0(sdskey, FUNC5(sdskey));
    } else if (o->type == OBJ_SET) {
        sds keysds = FUNC2(de);
        key = FUNC0(keysds,FUNC5(keysds));
    } else if (o->type == OBJ_HASH) {
        sds sdskey = FUNC2(de);
        sds sdsval = FUNC3(de);
        key = FUNC0(sdskey,FUNC5(sdskey));
        val = FUNC0(sdsval,FUNC5(sdsval));
    } else if (o->type == OBJ_ZSET) {
        sds sdskey = FUNC2(de);
        key = FUNC0(sdskey,FUNC5(sdskey));
        val = FUNC1(*(double*)FUNC3(de),0);
    } else {
        FUNC6("Type not handled in SCAN callback.");
    }

    FUNC4(keys, key);
    if (val) FUNC4(keys, val);
}