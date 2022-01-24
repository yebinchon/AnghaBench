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
typedef  int /*<<< orphan*/  RedisModuleInfoCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(RedisModuleInfoCtx *ctx, int for_crash_report) {
    FUNC3(ctx, "");
    FUNC2(ctx, "global", -2);

    FUNC3(ctx, "Spanish");
    FUNC0(ctx, "uno", "one");
    FUNC2(ctx, "dos", 2);

    FUNC3(ctx, "Italian");
    FUNC2(ctx, "due", 2);
    FUNC1(ctx, "tre", 3.3);

    FUNC3(ctx, "keyspace");
    FUNC4(ctx, "db0");
    FUNC2(ctx, "keys", 3);
    FUNC2(ctx, "expires", 1);
    FUNC5(ctx);

    if (for_crash_report) {
        FUNC3(ctx, "Klingon");
        FUNC0(ctx, "one", "wa’");
        FUNC0(ctx, "two", "cha’");
        FUNC0(ctx, "three", "wej");
    }

}