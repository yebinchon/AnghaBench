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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  expires; int /*<<< orphan*/  dict; } ;
typedef  TYPE_1__ redisDb ;
struct TYPE_9__ {int dbnum; scalar_t__ cluster_enabled; } ;
struct TYPE_8__ {int member_1; int member_2; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RedisModuleFlushInfoV1 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int EMPTYDB_ASYNC ; 
 int /*<<< orphan*/  REDISMODULE_EVENT_FLUSHDB ; 
 int /*<<< orphan*/  REDISMODULE_FLUSHINFO_VERSION ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_FLUSHDB_END ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_FLUSHDB_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void (*) (void*)) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

long long FUNC8(redisDb *dbarray, int dbnum, int flags, void(callback)(void*)) {
    int async = (flags & EMPTYDB_ASYNC);
    long long removed = 0;

    if (dbnum < -1 || dbnum >= server.dbnum) {
        errno = EINVAL;
        return -1;
    }

    /* Fire the flushdb modules event. */
    RedisModuleFlushInfoV1 fi = {REDISMODULE_FLUSHINFO_VERSION,!async,dbnum};
    FUNC4(REDISMODULE_EVENT_FLUSHDB,
                          REDISMODULE_SUBEVENT_FLUSHDB_START,
                          &fi);

    /* Make sure the WATCHed keys are affected by the FLUSH* commands.
     * Note that we need to call the function while the keys are still
     * there. */
    FUNC5(dbnum);

    int startdb, enddb;
    if (dbnum == -1) {
        startdb = 0;
        enddb = server.dbnum-1;
    } else {
        startdb = enddb = dbnum;
    }

    for (int j = startdb; j <= enddb; j++) {
        removed += FUNC1(dbarray[j].dict);
        if (async) {
            FUNC2(&dbarray[j]);
        } else {
            FUNC0(dbarray[j].dict,callback);
            FUNC0(dbarray[j].expires,callback);
        }
    }
    if (server.cluster_enabled) {
        if (async) {
            FUNC7();
        } else {
            FUNC6();
        }
    }
    if (dbnum == -1) FUNC3();

    /* Also fire the end event. Note that this event will fire almost
     * immediately after the start event if the flush is asynchronous. */
    FUNC4(REDISMODULE_EVENT_FLUSHDB,
                          REDISMODULE_SUBEVENT_FLUSHDB_END,
                          &fi);

    return removed;
}