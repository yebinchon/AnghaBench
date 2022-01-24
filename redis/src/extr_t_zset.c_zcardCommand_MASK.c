#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_7__ {int /*<<< orphan*/ ** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_8__ {int /*<<< orphan*/  czero; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ZSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(client *c) {
    robj *key = c->argv[1];
    robj *zobj;

    if ((zobj = FUNC2(c,key,shared.czero)) == NULL ||
        FUNC1(c,zobj,OBJ_ZSET)) return;

    FUNC0(c,FUNC3(zobj));
}