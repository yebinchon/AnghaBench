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
typedef  void* uint64_t ;
typedef  void* RedisModuleEvent ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 

void FUNC2(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    FUNC0(e);
    FUNC0(data);
    FUNC0(sub);

    FUNC1(ctx, "warning", "module-event-%s", "shutdown");
}