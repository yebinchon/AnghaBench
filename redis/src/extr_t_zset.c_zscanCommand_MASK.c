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
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_8__ {int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_9__ {int /*<<< orphan*/  emptyscan; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  OBJ_ZSET ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_3__ shared ; 

void FUNC4(client *c) {
    robj *o;
    unsigned long cursor;

    if (FUNC2(c,c->argv[2],&cursor) == C_ERR) return;
    if ((o = FUNC1(c,c->argv[1],shared.emptyscan)) == NULL ||
        FUNC0(c,o,OBJ_ZSET)) return;
    FUNC3(c,o,cursor);
}