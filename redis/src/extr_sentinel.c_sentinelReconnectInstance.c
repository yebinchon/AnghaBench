
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int flags; TYPE_1__* addr; TYPE_3__* link; } ;
typedef TYPE_2__ sentinelRedisInstance ;
typedef scalar_t__ mstime_t ;
struct TYPE_23__ {scalar_t__ disconnected; scalar_t__ last_reconn_time; TYPE_6__* pc; TYPE_6__* cc; void* pc_conn_time; void* cc_conn_time; scalar_t__ pending_commands; } ;
typedef TYPE_3__ instanceLink ;
struct TYPE_25__ {TYPE_3__* data; int errstr; scalar_t__ err; } ;
struct TYPE_24__ {int el; scalar_t__ tls_replication; } ;
struct TYPE_21__ {scalar_t__ port; int ip; } ;


 scalar_t__ C_ERR ;
 int C_OK ;
 int LL_DEBUG ;
 int NET_FIRST_BIND_ADDR ;
 int SENTINEL_HELLO_CHANNEL ;
 scalar_t__ SENTINEL_PING_PERIOD ;
 int SRI_MASTER ;
 int SRI_SENTINEL ;
 int SRI_SLAVE ;
 int instanceLinkCloseConnection (TYPE_3__*,TYPE_6__*) ;
 scalar_t__ instanceLinkNegotiateTLS (TYPE_6__*) ;
 void* mstime () ;
 int redisAeAttach (int ,TYPE_6__*) ;
 int redisAsyncCommand (TYPE_6__*,int ,TYPE_2__*,char*,int ,int ) ;
 void* redisAsyncConnectBind (int ,scalar_t__,int ) ;
 int redisAsyncSetConnectCallback (TYPE_6__*,int ) ;
 int redisAsyncSetDisconnectCallback (TYPE_6__*,int ) ;
 int sentinelDisconnectCallback ;
 int sentinelEvent (int ,char*,TYPE_2__*,char*,...) ;
 int sentinelInstanceMapCommand (TYPE_2__*,char*) ;
 int sentinelLinkEstablishedCallback ;
 int sentinelReceiveHelloMessages ;
 int sentinelSendAuthIfNeeded (TYPE_2__*,TYPE_6__*) ;
 int sentinelSendPing (TYPE_2__*) ;
 int sentinelSetClientName (TYPE_2__*,TYPE_6__*,char*) ;
 TYPE_4__ server ;

void sentinelReconnectInstance(sentinelRedisInstance *ri) {
    if (ri->link->disconnected == 0) return;
    if (ri->addr->port == 0) return;
    instanceLink *link = ri->link;
    mstime_t now = mstime();

    if (now - ri->link->last_reconn_time < SENTINEL_PING_PERIOD) return;
    ri->link->last_reconn_time = now;


    if (link->cc == ((void*)0)) {
        link->cc = redisAsyncConnectBind(ri->addr->ip,ri->addr->port,NET_FIRST_BIND_ADDR);
        if (!link->cc->err && server.tls_replication &&
                (instanceLinkNegotiateTLS(link->cc) == C_ERR)) {
            sentinelEvent(LL_DEBUG,"-cmd-link-reconnection",ri,"%@ #Failed to initialize TLS");
            instanceLinkCloseConnection(link,link->cc);
        } else if (link->cc->err) {
            sentinelEvent(LL_DEBUG,"-cmd-link-reconnection",ri,"%@ #%s",
                link->cc->errstr);
            instanceLinkCloseConnection(link,link->cc);
        } else {
            link->pending_commands = 0;
            link->cc_conn_time = mstime();
            link->cc->data = link;
            redisAeAttach(server.el,link->cc);
            redisAsyncSetConnectCallback(link->cc,
                    sentinelLinkEstablishedCallback);
            redisAsyncSetDisconnectCallback(link->cc,
                    sentinelDisconnectCallback);
            sentinelSendAuthIfNeeded(ri,link->cc);
            sentinelSetClientName(ri,link->cc,"cmd");


            sentinelSendPing(ri);
        }
    }

    if ((ri->flags & (SRI_MASTER|SRI_SLAVE)) && link->pc == ((void*)0)) {
        link->pc = redisAsyncConnectBind(ri->addr->ip,ri->addr->port,NET_FIRST_BIND_ADDR);
        if (!link->pc->err && server.tls_replication &&
                (instanceLinkNegotiateTLS(link->pc) == C_ERR)) {
            sentinelEvent(LL_DEBUG,"-pubsub-link-reconnection",ri,"%@ #Failed to initialize TLS");
        } else if (link->pc->err) {
            sentinelEvent(LL_DEBUG,"-pubsub-link-reconnection",ri,"%@ #%s",
                link->pc->errstr);
            instanceLinkCloseConnection(link,link->pc);
        } else {
            int retval;

            link->pc_conn_time = mstime();
            link->pc->data = link;
            redisAeAttach(server.el,link->pc);
            redisAsyncSetConnectCallback(link->pc,
                    sentinelLinkEstablishedCallback);
            redisAsyncSetDisconnectCallback(link->pc,
                    sentinelDisconnectCallback);
            sentinelSendAuthIfNeeded(ri,link->pc);
            sentinelSetClientName(ri,link->pc,"pubsub");

            retval = redisAsyncCommand(link->pc,
                sentinelReceiveHelloMessages, ri, "%s %s",
                sentinelInstanceMapCommand(ri,"SUBSCRIBE"),
                SENTINEL_HELLO_CHANNEL);
            if (retval != C_OK) {


                instanceLinkCloseConnection(link,link->pc);
                return;
            }
        }
    }


    if (link->cc && (ri->flags & SRI_SENTINEL || link->pc))
        link->disconnected = 0;
}
