#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zsl; int /*<<< orphan*/  dict; } ;
typedef  TYPE_1__ zset ;
struct TYPE_8__ {int /*<<< orphan*/  encoding; } ;
typedef  TYPE_2__ robj ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ENCODING_SKIPLIST ; 
 int /*<<< orphan*/  OBJ_ZSET ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  zsetDictType ; 
 int /*<<< orphan*/  FUNC3 () ; 

robj *FUNC4(void) {
    zset *zs = FUNC2(sizeof(*zs));
    robj *o;

    zs->dict = FUNC1(&zsetDictType,NULL);
    zs->zsl = FUNC3();
    o = FUNC0(OBJ_ZSET,zs);
    o->encoding = OBJ_ENCODING_SKIPLIST;
    return o;
}