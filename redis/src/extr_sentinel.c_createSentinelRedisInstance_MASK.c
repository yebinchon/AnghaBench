#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  slavename ;
struct TYPE_7__ {int flags; char* name; int quorum; int role_reported; void* slave_conf_change_time; void* role_reported_time; int /*<<< orphan*/ * info; int /*<<< orphan*/ * client_reconfig_script; int /*<<< orphan*/ * notification_script; int /*<<< orphan*/ * promoted_slave; scalar_t__ failover_delay_logged; int /*<<< orphan*/  failover_timeout; scalar_t__ failover_start_time; scalar_t__ failover_state_change_time; int /*<<< orphan*/  failover_state; scalar_t__ failover_epoch; scalar_t__ leader_epoch; int /*<<< orphan*/ * leader; void* renamed_commands; scalar_t__ info_refresh; int /*<<< orphan*/ * slaves; struct TYPE_7__* master; int /*<<< orphan*/  parallel_syncs; int /*<<< orphan*/ * sentinels; scalar_t__ slave_repl_offset; int /*<<< orphan*/  slave_master_link_status; scalar_t__ slave_master_port; int /*<<< orphan*/ * slave_master_host; scalar_t__ slave_reconf_sent_time; int /*<<< orphan*/  slave_priority; int /*<<< orphan*/ * auth_pass; scalar_t__ master_link_down_time; int /*<<< orphan*/  down_after_period; scalar_t__ o_down_since_time; scalar_t__ s_down_since_time; void* last_master_down_reply_time; void* last_hello_time; void* last_pub_time; int /*<<< orphan*/  link; int /*<<< orphan*/ * addr; scalar_t__ config_epoch; int /*<<< orphan*/ * runid; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  sentinelAddr ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_8__ {int /*<<< orphan*/ * masters; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int NET_PEER_ID_LEN ; 
 int /*<<< orphan*/  SENTINEL_DEFAULT_DOWN_AFTER ; 
 int /*<<< orphan*/  SENTINEL_DEFAULT_FAILOVER_TIMEOUT ; 
 int /*<<< orphan*/  SENTINEL_DEFAULT_PARALLEL_SYNCS ; 
 int /*<<< orphan*/  SENTINEL_DEFAULT_SLAVE_PRIORITY ; 
 int /*<<< orphan*/  SENTINEL_FAILOVER_STATE_NONE ; 
 int /*<<< orphan*/  SENTINEL_MASTER_LINK_STATUS_DOWN ; 
 int SRI_MASTER ; 
 int SRI_SENTINEL ; 
 int SRI_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  instancesDictType ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  renamedCommandsDictType ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 TYPE_3__ sentinel ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_1__* FUNC11 (int) ; 

sentinelRedisInstance *FUNC12(char *name, int flags, char *hostname, int port, int quorum, sentinelRedisInstance *master) {
    sentinelRedisInstance *ri;
    sentinelAddr *addr;
    dict *table = NULL;
    char slavename[NET_PEER_ID_LEN], *sdsname;

    FUNC10(flags & (SRI_MASTER|SRI_SLAVE|SRI_SENTINEL));
    FUNC10((flags & SRI_MASTER) || master != NULL);

    /* Check address validity. */
    addr = FUNC2(hostname,port);
    if (addr == NULL) return NULL;

    /* For slaves use ip:port as name. */
    if (flags & SRI_SLAVE) {
        FUNC0(slavename, sizeof(slavename), hostname, port);
        name = slavename;
    }

    /* Make sure the entry is not duplicated. This may happen when the same
     * name for a master is used multiple times inside the configuration or
     * if we try to add multiple times a slave or sentinel with same ip/port
     * to a master. */
    if (flags & SRI_MASTER) table = sentinel.masters;
    else if (flags & SRI_SLAVE) table = master->slaves;
    else if (flags & SRI_SENTINEL) table = master->sentinels;
    sdsname = FUNC9(name);
    if (FUNC5(table,sdsname)) {
        FUNC7(addr);
        FUNC8(sdsname);
        errno = EBUSY;
        return NULL;
    }

    /* Create the instance object. */
    ri = FUNC11(sizeof(*ri));
    /* Note that all the instances are started in the disconnected state,
     * the event loop will take care of connecting them. */
    ri->flags = flags;
    ri->name = sdsname;
    ri->runid = NULL;
    ri->config_epoch = 0;
    ri->addr = addr;
    ri->link = FUNC1();
    ri->last_pub_time = FUNC6();
    ri->last_hello_time = FUNC6();
    ri->last_master_down_reply_time = FUNC6();
    ri->s_down_since_time = 0;
    ri->o_down_since_time = 0;
    ri->down_after_period = master ? master->down_after_period :
                            SENTINEL_DEFAULT_DOWN_AFTER;
    ri->master_link_down_time = 0;
    ri->auth_pass = NULL;
    ri->slave_priority = SENTINEL_DEFAULT_SLAVE_PRIORITY;
    ri->slave_reconf_sent_time = 0;
    ri->slave_master_host = NULL;
    ri->slave_master_port = 0;
    ri->slave_master_link_status = SENTINEL_MASTER_LINK_STATUS_DOWN;
    ri->slave_repl_offset = 0;
    ri->sentinels = FUNC4(&instancesDictType,NULL);
    ri->quorum = quorum;
    ri->parallel_syncs = SENTINEL_DEFAULT_PARALLEL_SYNCS;
    ri->master = master;
    ri->slaves = FUNC4(&instancesDictType,NULL);
    ri->info_refresh = 0;
    ri->renamed_commands = FUNC4(&renamedCommandsDictType,NULL);

    /* Failover state. */
    ri->leader = NULL;
    ri->leader_epoch = 0;
    ri->failover_epoch = 0;
    ri->failover_state = SENTINEL_FAILOVER_STATE_NONE;
    ri->failover_state_change_time = 0;
    ri->failover_start_time = 0;
    ri->failover_timeout = SENTINEL_DEFAULT_FAILOVER_TIMEOUT;
    ri->failover_delay_logged = 0;
    ri->promoted_slave = NULL;
    ri->notification_script = NULL;
    ri->client_reconfig_script = NULL;
    ri->info = NULL;

    /* Role */
    ri->role_reported = ri->flags & (SRI_MASTER|SRI_SLAVE);
    ri->role_reported_time = FUNC6();
    ri->slave_conf_change_time = FUNC6();

    /* Add into the right table. */
    FUNC3(table, ri->name, ri);
    return ri;
}