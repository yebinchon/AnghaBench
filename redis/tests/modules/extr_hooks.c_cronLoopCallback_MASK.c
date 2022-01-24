#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  hz; } ;
typedef  int /*<<< orphan*/  RedisModuleEvent ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  TYPE_1__ RedisModuleCronLoop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    FUNC1(e);
    FUNC1(sub);

    RedisModuleCronLoop *ei = data;
    FUNC0(ctx, "cron-loop", ei->hz);
}