
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int mstime_t ;
struct TYPE_9__ {int timeout; } ;
struct TYPE_10__ {int flags; scalar_t__ lastinteraction; TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {scalar_t__ maxidletime; scalar_t__ cluster_enabled; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_MASTER ;
 int CLIENT_PUBSUB ;
 int CLIENT_SLAVE ;
 int LL_VERBOSE ;
 scalar_t__ clusterRedirectBlockedClientIfNeeded (TYPE_2__*) ;
 int freeClient (TYPE_2__*) ;
 int replyToBlockedClientTimedOut (TYPE_2__*) ;
 TYPE_4__ server ;
 int serverLog (int ,char*) ;
 int unblockClient (TYPE_2__*) ;

int clientsCronHandleTimeout(client *c, mstime_t now_ms) {
    time_t now = now_ms/1000;

    if (server.maxidletime &&
        !(c->flags & CLIENT_SLAVE) &&
        !(c->flags & CLIENT_MASTER) &&
        !(c->flags & CLIENT_BLOCKED) &&
        !(c->flags & CLIENT_PUBSUB) &&
        (now - c->lastinteraction > server.maxidletime))
    {
        serverLog(LL_VERBOSE,"Closing idle client");
        freeClient(c);
        return 1;
    } else if (c->flags & CLIENT_BLOCKED) {




        if (c->bpop.timeout != 0 && c->bpop.timeout < now_ms) {

            replyToBlockedClientTimedOut(c);
            unblockClient(c);
        } else if (server.cluster_enabled) {


            if (clusterRedirectBlockedClientIfNeeded(c))
                unblockClient(c);
        }
    }
    return 0;
}
