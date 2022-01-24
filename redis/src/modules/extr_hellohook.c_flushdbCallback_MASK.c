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
struct TYPE_2__ {int dbnum; } ;
typedef  TYPE_1__ RedisModuleFlushInfo ;
typedef  int /*<<< orphan*/ * RedisModuleEvent ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  int /*<<< orphan*/  RedisModuleCallReply ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ REDISMODULE_SUBEVENT_FLUSHDB_START ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 long long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void FUNC5(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    FUNC0(ctx);
    FUNC0(e);

    RedisModuleFlushInfo *fi = data;
    if (sub == REDISMODULE_SUBEVENT_FLUSHDB_START) {
        if (fi->dbnum != -1) {
            RedisModuleCallReply *reply;
            reply = FUNC1(ctx,"DBSIZE","");
            long long numkeys = FUNC2(reply);
            FUNC4("FLUSHDB event of database %d started (%lld keys in DB)\n",
                fi->dbnum, numkeys);
            FUNC3(reply);
        } else {
            FUNC4("FLUSHALL event started\n");
        }
    } else {
        if (fi->dbnum != -1) {
            FUNC4("FLUSHDB event of database %d ended\n",fi->dbnum);
        } else {
            FUNC4("FLUSHALL event ended\n");
        }
    }
}