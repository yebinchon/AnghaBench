#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisContext ;
struct TYPE_7__ {int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ redisAsyncContext ;

/* Variables and functions */
 scalar_t__ REDIS_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*) ; 

void FUNC5(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    int done = 0;

    if (FUNC4(c,&done) == REDIS_ERR) {
        FUNC3(ac);
    } else {
        /* Continue writing when not done, stop writing otherwise */
        if (!done)
            FUNC1(ac);
        else
            FUNC2(ac);

        /* Always schedule reads after writes */
        FUNC0(ac);
    }
}