#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* zsl; } ;
typedef  TYPE_2__ zset ;
typedef  int sds ;
struct TYPE_12__ {int type; int encoding; int refcount; scalar_t__ ptr; } ;
typedef  TYPE_3__ robj ;
struct TYPE_10__ {scalar_t__ level; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ OBJ_ENCODING_SKIPLIST ; 
 scalar_t__ OBJ_HASH ; 
 scalar_t__ OBJ_LIST ; 
 scalar_t__ OBJ_SET ; 
 scalar_t__ OBJ_STRING ; 
 scalar_t__ OBJ_ZSET ; 
 scalar_t__ FUNC0 (TYPE_3__ const*) ; 
 scalar_t__ FUNC1 (TYPE_3__ const*) ; 
 scalar_t__ FUNC2 (TYPE_3__ const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC8 (TYPE_3__ const*) ; 
 scalar_t__ FUNC9 (TYPE_3__ const*) ; 

void FUNC10(const robj *o) {
    FUNC7(LL_WARNING,"Object type: %d", o->type);
    FUNC7(LL_WARNING,"Object encoding: %d", o->encoding);
    FUNC7(LL_WARNING,"Object refcount: %d", o->refcount);
    if (o->type == OBJ_STRING && FUNC2(o)) {
        FUNC7(LL_WARNING,"Object raw string len: %zu", FUNC6(o->ptr));
        if (FUNC6(o->ptr) < 4096) {
            sds repr = FUNC3(FUNC4(),o->ptr,FUNC6(o->ptr));
            FUNC7(LL_WARNING,"Object raw string content: %s", repr);
            FUNC5(repr);
        }
    } else if (o->type == OBJ_LIST) {
        FUNC7(LL_WARNING,"List length: %d", (int) FUNC1(o));
    } else if (o->type == OBJ_SET) {
        FUNC7(LL_WARNING,"Set size: %d", (int) FUNC8(o));
    } else if (o->type == OBJ_HASH) {
        FUNC7(LL_WARNING,"Hash size: %d", (int) FUNC0(o));
    } else if (o->type == OBJ_ZSET) {
        FUNC7(LL_WARNING,"Sorted set size: %d", (int) FUNC9(o));
        if (o->encoding == OBJ_ENCODING_SKIPLIST)
            FUNC7(LL_WARNING,"Skiplist level: %d", (int) ((const zset*)o->ptr)->zsl->level);
    }
}