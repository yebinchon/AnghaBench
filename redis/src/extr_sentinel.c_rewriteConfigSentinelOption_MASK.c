#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rewriteConfigState {int dummy; } ;
struct TYPE_8__ {scalar_t__ down_after_period; scalar_t__ failover_timeout; long notification_script; long client_reconfig_script; long auth_pass; int /*<<< orphan*/  name; int /*<<< orphan*/  renamed_commands; int /*<<< orphan*/ * runid; TYPE_2__* addr; int /*<<< orphan*/  sentinels; int /*<<< orphan*/  slaves; scalar_t__ leader_epoch; scalar_t__ config_epoch; int /*<<< orphan*/  parallel_syncs; int /*<<< orphan*/  quorum; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
struct TYPE_9__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ sentinelAddr ;
typedef  void* sds ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_10__ {unsigned long long myid; scalar_t__ deny_scripts_reconfig; unsigned long long announce_port; scalar_t__ announce_ip; scalar_t__ current_epoch; int /*<<< orphan*/  masters; } ;

/* Variables and functions */
 scalar_t__ SENTINEL_DEFAULT_DENY_SCRIPTS_RECONFIG ; 
 scalar_t__ SENTINEL_DEFAULT_DOWN_AFTER ; 
 scalar_t__ SENTINEL_DEFAULT_FAILOVER_TIMEOUT ; 
 int /*<<< orphan*/  SENTINEL_DEFAULT_PARALLEL_SYNCS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rewriteConfigState*,char*,void*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC7 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 void* FUNC10 (char*) ; 
 TYPE_7__ sentinel ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC12 (TYPE_1__*) ; 

void FUNC13(struct rewriteConfigState *state) {
    dictIterator *di, *di2;
    dictEntry *de;
    sds line;

    /* sentinel unique ID. */
    line = FUNC6(FUNC8(), "sentinel myid %s", sentinel.myid);
    FUNC5(state,"sentinel",line,1);

    /* sentinel deny-scripts-reconfig. */
    line = FUNC6(FUNC8(), "sentinel deny-scripts-reconfig %s",
        sentinel.deny_scripts_reconfig ? "yes" : "no");
    FUNC5(state,"sentinel",line,
        sentinel.deny_scripts_reconfig != SENTINEL_DEFAULT_DENY_SCRIPTS_RECONFIG);

    /* For every master emit a "sentinel monitor" config entry. */
    di = FUNC0(sentinel.masters);
    while((de = FUNC3(di)) != NULL) {
        sentinelRedisInstance *master, *ri;
        sentinelAddr *master_addr;

        /* sentinel monitor */
        master = FUNC2(de);
        master_addr = FUNC12(master);
        line = FUNC6(FUNC8(),"sentinel monitor %s %s %d %d",
            master->name, master_addr->ip, master_addr->port,
            master->quorum);
        FUNC5(state,"sentinel",line,1);

        /* sentinel down-after-milliseconds */
        if (master->down_after_period != SENTINEL_DEFAULT_DOWN_AFTER) {
            line = FUNC6(FUNC8(),
                "sentinel down-after-milliseconds %s %ld",
                master->name, (long) master->down_after_period);
            FUNC5(state,"sentinel",line,1);
        }

        /* sentinel failover-timeout */
        if (master->failover_timeout != SENTINEL_DEFAULT_FAILOVER_TIMEOUT) {
            line = FUNC6(FUNC8(),
                "sentinel failover-timeout %s %ld",
                master->name, (long) master->failover_timeout);
            FUNC5(state,"sentinel",line,1);
        }

        /* sentinel parallel-syncs */
        if (master->parallel_syncs != SENTINEL_DEFAULT_PARALLEL_SYNCS) {
            line = FUNC6(FUNC8(),
                "sentinel parallel-syncs %s %d",
                master->name, master->parallel_syncs);
            FUNC5(state,"sentinel",line,1);
        }

        /* sentinel notification-script */
        if (master->notification_script) {
            line = FUNC6(FUNC8(),
                "sentinel notification-script %s %s",
                master->name, master->notification_script);
            FUNC5(state,"sentinel",line,1);
        }

        /* sentinel client-reconfig-script */
        if (master->client_reconfig_script) {
            line = FUNC6(FUNC8(),
                "sentinel client-reconfig-script %s %s",
                master->name, master->client_reconfig_script);
            FUNC5(state,"sentinel",line,1);
        }

        /* sentinel auth-pass */
        if (master->auth_pass) {
            line = FUNC6(FUNC8(),
                "sentinel auth-pass %s %s",
                master->name, master->auth_pass);
            FUNC5(state,"sentinel",line,1);
        }

        /* sentinel config-epoch */
        line = FUNC6(FUNC8(),
            "sentinel config-epoch %s %llu",
            master->name, (unsigned long long) master->config_epoch);
        FUNC5(state,"sentinel",line,1);

        /* sentinel leader-epoch */
        line = FUNC6(FUNC8(),
            "sentinel leader-epoch %s %llu",
            master->name, (unsigned long long) master->leader_epoch);
        FUNC5(state,"sentinel",line,1);

        /* sentinel known-slave */
        di2 = FUNC0(master->slaves);
        while((de = FUNC3(di2)) != NULL) {
            sentinelAddr *slave_addr;

            ri = FUNC2(de);
            slave_addr = ri->addr;

            /* If master_addr (obtained using sentinelGetCurrentMasterAddress()
             * so it may be the address of the promoted slave) is equal to this
             * slave's address, a failover is in progress and the slave was
             * already successfully promoted. So as the address of this slave
             * we use the old master address instead. */
            if (FUNC11(slave_addr,master_addr))
                slave_addr = master->addr;
            line = FUNC6(FUNC8(),
                "sentinel known-replica %s %s %d",
                master->name, slave_addr->ip, slave_addr->port);
            FUNC5(state,"sentinel",line,1);
        }
        FUNC4(di2);

        /* sentinel known-sentinel */
        di2 = FUNC0(master->sentinels);
        while((de = FUNC3(di2)) != NULL) {
            ri = FUNC2(de);
            if (ri->runid == NULL) continue;
            line = FUNC6(FUNC8(),
                "sentinel known-sentinel %s %s %d %s",
                master->name, ri->addr->ip, ri->addr->port, ri->runid);
            FUNC5(state,"sentinel",line,1);
        }
        FUNC4(di2);

        /* sentinel rename-command */
        di2 = FUNC0(master->renamed_commands);
        while((de = FUNC3(di2)) != NULL) {
            sds oldname = FUNC1(de);
            sds newname = FUNC2(de);
            line = FUNC6(FUNC8(),
                "sentinel rename-command %s %s %s",
                master->name, oldname, newname);
            FUNC5(state,"sentinel",line,1);
        }
        FUNC4(di2);
    }

    /* sentinel current-epoch is a global state valid for all the masters. */
    line = FUNC6(FUNC8(),
        "sentinel current-epoch %llu", (unsigned long long) sentinel.current_epoch);
    FUNC5(state,"sentinel",line,1);

    /* sentinel announce-ip. */
    if (sentinel.announce_ip) {
        line = FUNC10("sentinel announce-ip ");
        line = FUNC7(line, sentinel.announce_ip, FUNC9(sentinel.announce_ip));
        FUNC5(state,"sentinel",line,1);
    }

    /* sentinel announce-port. */
    if (sentinel.announce_port) {
        line = FUNC6(FUNC8(),"sentinel announce-port %d",
                            sentinel.announce_port);
        FUNC5(state,"sentinel",line,1);
    }

    FUNC4(di);
}