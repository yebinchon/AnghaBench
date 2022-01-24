#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int flags; TYPE_1__* addr; TYPE_3__* link; } ;
typedef  TYPE_2__ sentinelRedisInstance ;
typedef  scalar_t__ mstime_t ;
struct TYPE_23__ {scalar_t__ disconnected; scalar_t__ last_reconn_time; TYPE_6__* pc; TYPE_6__* cc; void* pc_conn_time; void* cc_conn_time; scalar_t__ pending_commands; } ;
typedef  TYPE_3__ instanceLink ;
struct TYPE_25__ {TYPE_3__* data; int /*<<< orphan*/  errstr; scalar_t__ err; } ;
struct TYPE_24__ {int /*<<< orphan*/  el; scalar_t__ tls_replication; } ;
struct TYPE_21__ {scalar_t__ port; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  NET_FIRST_BIND_ADDR ; 
 int /*<<< orphan*/  SENTINEL_HELLO_CHANNEL ; 
 scalar_t__ SENTINEL_PING_PERIOD ; 
 int SRI_MASTER ; 
 int SRI_SENTINEL ; 
 int SRI_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_6__*) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sentinelDisconnectCallback ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  sentinelLinkEstablishedCallback ; 
 int /*<<< orphan*/  sentinelReceiveHelloMessages ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_6__*,char*) ; 
 TYPE_4__ server ; 

void FUNC13(sentinelRedisInstance *ri) {
    if (ri->link->disconnected == 0) return;
    if (ri->addr->port == 0) return; /* port == 0 means invalid address. */
    instanceLink *link = ri->link;
    mstime_t now = FUNC2();

    if (now - ri->link->last_reconn_time < SENTINEL_PING_PERIOD) return;
    ri->link->last_reconn_time = now;

    /* Commands connection. */
    if (link->cc == NULL) {
        link->cc = FUNC5(ri->addr->ip,ri->addr->port,NET_FIRST_BIND_ADDR);
        if (!link->cc->err && server.tls_replication &&
                (FUNC1(link->cc) == C_ERR)) {
            FUNC8(LL_DEBUG,"-cmd-link-reconnection",ri,"%@ #Failed to initialize TLS");
            FUNC0(link,link->cc);
        } else if (link->cc->err) {
            FUNC8(LL_DEBUG,"-cmd-link-reconnection",ri,"%@ #%s",
                link->cc->errstr);
            FUNC0(link,link->cc);
        } else {
            link->pending_commands = 0;
            link->cc_conn_time = FUNC2();
            link->cc->data = link;
            FUNC3(server.el,link->cc);
            FUNC6(link->cc,
                    sentinelLinkEstablishedCallback);
            FUNC7(link->cc,
                    sentinelDisconnectCallback);
            FUNC10(ri,link->cc);
            FUNC12(ri,link->cc,"cmd");

            /* Send a PING ASAP when reconnecting. */
            FUNC11(ri);
        }
    }
    /* Pub / Sub */
    if ((ri->flags & (SRI_MASTER|SRI_SLAVE)) && link->pc == NULL) {
        link->pc = FUNC5(ri->addr->ip,ri->addr->port,NET_FIRST_BIND_ADDR);
        if (!link->pc->err && server.tls_replication &&
                (FUNC1(link->pc) == C_ERR)) {
            FUNC8(LL_DEBUG,"-pubsub-link-reconnection",ri,"%@ #Failed to initialize TLS");
        } else if (link->pc->err) {
            FUNC8(LL_DEBUG,"-pubsub-link-reconnection",ri,"%@ #%s",
                link->pc->errstr);
            FUNC0(link,link->pc);
        } else {
            int retval;

            link->pc_conn_time = FUNC2();
            link->pc->data = link;
            FUNC3(server.el,link->pc);
            FUNC6(link->pc,
                    sentinelLinkEstablishedCallback);
            FUNC7(link->pc,
                    sentinelDisconnectCallback);
            FUNC10(ri,link->pc);
            FUNC12(ri,link->pc,"pubsub");
            /* Now we subscribe to the Sentinels "Hello" channel. */
            retval = FUNC4(link->pc,
                sentinelReceiveHelloMessages, ri, "%s %s",
                FUNC9(ri,"SUBSCRIBE"),
                SENTINEL_HELLO_CHANNEL);
            if (retval != C_OK) {
                /* If we can't subscribe, the Pub/Sub connection is useless
                 * and we can simply disconnect it and try again. */
                FUNC0(link,link->pc);
                return;
            }
        }
    }
    /* Clear the disconnected status only if we have both the connections
     * (or just the commands connection if this is a sentinel instance). */
    if (link->cc && (ri->flags & SRI_SENTINEL || link->pc))
        link->disconnected = 0;
}