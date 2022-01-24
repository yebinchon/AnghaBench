#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,void (*) (void*,void*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,char*,char*) ; 

void FUNC3(RedisModuleCtx *ctx, void *data) {
    FUNC0(ctx);
    FUNC0(data);

    static int times = 0;

    FUNC2(ctx,"INCR","c","timer");
    times++;

    if (times < 10)
        FUNC1(ctx,100,timerHandler,NULL);
    else
        times = 0;
}