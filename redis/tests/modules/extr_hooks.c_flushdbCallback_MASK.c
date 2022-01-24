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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  dbnum; } ;
typedef  TYPE_1__ RedisModuleFlushInfo ;
typedef  int /*<<< orphan*/  RedisModuleEvent ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REDISMODULE_SUBEVENT_FLUSHDB_START ; 

void FUNC2(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    FUNC1(e);

    RedisModuleFlushInfo *fi = data;
    char *keyname = (sub == REDISMODULE_SUBEVENT_FLUSHDB_START) ?
        "flush-start" : "flush-end";
    FUNC0(ctx, keyname, fi->dbnum);
}