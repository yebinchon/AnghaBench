#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* name; char* runid; int flags; int role_reported; char* notification_script; char* client_reconfig_script; scalar_t__ slave_master_link_status; char* slave_master_host; char* leader; scalar_t__ leader_epoch; scalar_t__ last_hello_time; scalar_t__ slave_repl_offset; scalar_t__ slave_priority; scalar_t__ slave_master_port; scalar_t__ master_link_down_time; scalar_t__ parallel_syncs; scalar_t__ failover_timeout; scalar_t__ quorum; int /*<<< orphan*/  sentinels; int /*<<< orphan*/  slaves; scalar_t__ config_epoch; scalar_t__ role_reported_time; scalar_t__ info_refresh; scalar_t__ down_after_period; scalar_t__ o_down_since_time; scalar_t__ s_down_since_time; TYPE_2__* link; int /*<<< orphan*/  failover_state; TYPE_1__* addr; } ;
typedef  TYPE_3__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_6__ {scalar_t__ last_pong_time; scalar_t__ last_avail_time; scalar_t__ act_ping_time; scalar_t__ refcount; scalar_t__ pending_commands; scalar_t__ disconnected; } ;
struct TYPE_5__ {char* ip; scalar_t__ port; } ;

/* Variables and functions */
 scalar_t__ SENTINEL_MASTER_LINK_STATUS_UP ; 
 int SRI_FAILOVER_IN_PROGRESS ; 
 int SRI_MASTER ; 
 int SRI_MASTER_DOWN ; 
 int SRI_O_DOWN ; 
 int SRI_PROMOTED ; 
 int SRI_RECONF_DONE ; 
 int SRI_RECONF_INPROG ; 
 int SRI_RECONF_SENT ; 
 int SRI_SENTINEL ; 
 int SRI_SLAVE ; 
 int SRI_S_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 char* FUNC5 (char*,char*) ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*,int) ; 

void FUNC12(client *c, sentinelRedisInstance *ri) {
    char *flags = FUNC6();
    void *mbl;
    int fields = 0;

    mbl = FUNC2(c);

    FUNC0(c,"name");
    FUNC0(c,ri->name);
    fields++;

    FUNC0(c,"ip");
    FUNC0(c,ri->addr->ip);
    fields++;

    FUNC0(c,"port");
    FUNC1(c,ri->addr->port);
    fields++;

    FUNC0(c,"runid");
    FUNC0(c,ri->runid ? ri->runid : "");
    fields++;

    FUNC0(c,"flags");
    if (ri->flags & SRI_S_DOWN) flags = FUNC5(flags,"s_down,");
    if (ri->flags & SRI_O_DOWN) flags = FUNC5(flags,"o_down,");
    if (ri->flags & SRI_MASTER) flags = FUNC5(flags,"master,");
    if (ri->flags & SRI_SLAVE) flags = FUNC5(flags,"slave,");
    if (ri->flags & SRI_SENTINEL) flags = FUNC5(flags,"sentinel,");
    if (ri->link->disconnected) flags = FUNC5(flags,"disconnected,");
    if (ri->flags & SRI_MASTER_DOWN) flags = FUNC5(flags,"master_down,");
    if (ri->flags & SRI_FAILOVER_IN_PROGRESS)
        flags = FUNC5(flags,"failover_in_progress,");
    if (ri->flags & SRI_PROMOTED) flags = FUNC5(flags,"promoted,");
    if (ri->flags & SRI_RECONF_SENT) flags = FUNC5(flags,"reconf_sent,");
    if (ri->flags & SRI_RECONF_INPROG) flags = FUNC5(flags,"reconf_inprog,");
    if (ri->flags & SRI_RECONF_DONE) flags = FUNC5(flags,"reconf_done,");

    if (FUNC8(flags) != 0) FUNC9(flags,0,-2); /* remove last "," */
    FUNC0(c,flags);
    FUNC7(flags);
    fields++;

    FUNC0(c,"link-pending-commands");
    FUNC1(c,ri->link->pending_commands);
    fields++;

    FUNC0(c,"link-refcount");
    FUNC1(c,ri->link->refcount);
    fields++;

    if (ri->flags & SRI_FAILOVER_IN_PROGRESS) {
        FUNC0(c,"failover-state");
        FUNC0(c,(char*)FUNC10(ri->failover_state));
        fields++;
    }

    FUNC0(c,"last-ping-sent");
    FUNC1(c,
        ri->link->act_ping_time ? (FUNC4() - ri->link->act_ping_time) : 0);
    fields++;

    FUNC0(c,"last-ok-ping-reply");
    FUNC1(c,FUNC4() - ri->link->last_avail_time);
    fields++;

    FUNC0(c,"last-ping-reply");
    FUNC1(c,FUNC4() - ri->link->last_pong_time);
    fields++;

    if (ri->flags & SRI_S_DOWN) {
        FUNC0(c,"s-down-time");
        FUNC1(c,FUNC4()-ri->s_down_since_time);
        fields++;
    }

    if (ri->flags & SRI_O_DOWN) {
        FUNC0(c,"o-down-time");
        FUNC1(c,FUNC4()-ri->o_down_since_time);
        fields++;
    }

    FUNC0(c,"down-after-milliseconds");
    FUNC1(c,ri->down_after_period);
    fields++;

    /* Masters and Slaves */
    if (ri->flags & (SRI_MASTER|SRI_SLAVE)) {
        FUNC0(c,"info-refresh");
        FUNC1(c,FUNC4() - ri->info_refresh);
        fields++;

        FUNC0(c,"role-reported");
        FUNC0(c, (ri->role_reported == SRI_MASTER) ? "master" :
                                                                   "slave");
        fields++;

        FUNC0(c,"role-reported-time");
        FUNC1(c,FUNC4() - ri->role_reported_time);
        fields++;
    }

    /* Only masters */
    if (ri->flags & SRI_MASTER) {
        FUNC0(c,"config-epoch");
        FUNC1(c,ri->config_epoch);
        fields++;

        FUNC0(c,"num-slaves");
        FUNC1(c,FUNC3(ri->slaves));
        fields++;

        FUNC0(c,"num-other-sentinels");
        FUNC1(c,FUNC3(ri->sentinels));
        fields++;

        FUNC0(c,"quorum");
        FUNC1(c,ri->quorum);
        fields++;

        FUNC0(c,"failover-timeout");
        FUNC1(c,ri->failover_timeout);
        fields++;

        FUNC0(c,"parallel-syncs");
        FUNC1(c,ri->parallel_syncs);
        fields++;

        if (ri->notification_script) {
            FUNC0(c,"notification-script");
            FUNC0(c,ri->notification_script);
            fields++;
        }

        if (ri->client_reconfig_script) {
            FUNC0(c,"client-reconfig-script");
            FUNC0(c,ri->client_reconfig_script);
            fields++;
        }
    }

    /* Only slaves */
    if (ri->flags & SRI_SLAVE) {
        FUNC0(c,"master-link-down-time");
        FUNC1(c,ri->master_link_down_time);
        fields++;

        FUNC0(c,"master-link-status");
        FUNC0(c,
            (ri->slave_master_link_status == SENTINEL_MASTER_LINK_STATUS_UP) ?
            "ok" : "err");
        fields++;

        FUNC0(c,"master-host");
        FUNC0(c,
            ri->slave_master_host ? ri->slave_master_host : "?");
        fields++;

        FUNC0(c,"master-port");
        FUNC1(c,ri->slave_master_port);
        fields++;

        FUNC0(c,"slave-priority");
        FUNC1(c,ri->slave_priority);
        fields++;

        FUNC0(c,"slave-repl-offset");
        FUNC1(c,ri->slave_repl_offset);
        fields++;
    }

    /* Only sentinels */
    if (ri->flags & SRI_SENTINEL) {
        FUNC0(c,"last-hello-message");
        FUNC1(c,FUNC4() - ri->last_hello_time);
        fields++;

        FUNC0(c,"voted-leader");
        FUNC0(c,ri->leader ? ri->leader : "?");
        fields++;

        FUNC0(c,"voted-leader-epoch");
        FUNC1(c,ri->leader_epoch);
        fields++;
    }

    FUNC11(c,mbl,fields);
}