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
typedef  int RedisModuleTimerID ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  timerHandler ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    for (int j = 0; j < 10; j++) {
        int delay = FUNC4() % 5000;
        char *buf = FUNC1(256);
        FUNC5(buf,256,"After %d", delay);
        RedisModuleTimerID tid = FUNC2(ctx,delay,timerHandler,buf);
        FUNC0(tid);
    }
    return FUNC3(ctx, "OK");
}