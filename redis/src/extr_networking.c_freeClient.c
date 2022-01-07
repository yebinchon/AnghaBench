
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int listNode ;
typedef int list ;
struct TYPE_18__ {int keys; } ;
struct TYPE_19__ {int flags; scalar_t__ replstate; int repldbfd; int * peerid; struct TYPE_19__* argv; scalar_t__ name; int * replpreamble; int reply; int pubsub_patterns; int pubsub_channels; int watched_keys; TYPE_1__ bpop; int * querybuf; int * pending_querybuf; scalar_t__ conn; } ;
typedef TYPE_2__ client ;
struct TYPE_20__ {int * clients_to_close; int unixtime; int repl_no_slaves_since; int * slaves; int * monitors; scalar_t__ master; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_CLOSE_AFTER_REPLY ;
 int CLIENT_CLOSE_ASAP ;
 int CLIENT_MASTER ;
 int CLIENT_MONITOR ;
 int CLIENT_PROTECTED ;
 int CLIENT_SLAVE ;
 int LL_WARNING ;
 int REDISMODULE_EVENT_CLIENT_CHANGE ;
 int REDISMODULE_EVENT_REPLICA_CHANGE ;
 int REDISMODULE_SUBEVENT_CLIENT_CHANGE_DISCONNECTED ;
 int REDISMODULE_SUBEVENT_REPLICA_CHANGE_OFFLINE ;
 scalar_t__ SLAVE_STATE_ONLINE ;
 scalar_t__ SLAVE_STATE_SEND_BULK ;
 int close (int) ;
 int decrRefCount (scalar_t__) ;
 int dictRelease (int ) ;
 int freeClientArgv (TYPE_2__*) ;
 int freeClientAsync (TYPE_2__*) ;
 int freeClientMultiState (TYPE_2__*) ;
 int listDelNode (int *,int *) ;
 scalar_t__ listLength (int *) ;
 int listRelease (int ) ;
 int * listSearchKey (int *,TYPE_2__*) ;
 int moduleFireServerEvent (int ,int ,TYPE_2__*) ;
 int pubsubUnsubscribeAllChannels (TYPE_2__*,int ) ;
 int pubsubUnsubscribeAllPatterns (TYPE_2__*,int ) ;
 int refreshGoodSlavesCount () ;
 int replicationCacheMaster (TYPE_2__*) ;
 int replicationGetSlaveName (TYPE_2__*) ;
 int replicationHandleMasterDisconnection () ;
 int sdsfree (int *) ;
 TYPE_7__ server ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,...) ;
 int unblockClient (TYPE_2__*) ;
 int unlinkClient (TYPE_2__*) ;
 int unwatchAllKeys (TYPE_2__*) ;
 int zfree (TYPE_2__*) ;

void freeClient(client *c) {
    listNode *ln;



    if (c->flags & CLIENT_PROTECTED) {
        freeClientAsync(c);
        return;
    }


    if (c->conn) {
        moduleFireServerEvent(REDISMODULE_EVENT_CLIENT_CHANGE,
                              REDISMODULE_SUBEVENT_CLIENT_CHANGE_DISCONNECTED,
                              c);
    }






    if (server.master && c->flags & CLIENT_MASTER) {
        serverLog(LL_WARNING,"Connection with master lost.");
        if (!(c->flags & (CLIENT_CLOSE_AFTER_REPLY|
                          CLIENT_CLOSE_ASAP|
                          CLIENT_BLOCKED)))
        {
            replicationCacheMaster(c);
            return;
        }
    }


    if ((c->flags & CLIENT_SLAVE) && !(c->flags & CLIENT_MONITOR)) {
        serverLog(LL_WARNING,"Connection with replica %s lost.",
            replicationGetSlaveName(c));
    }


    sdsfree(c->querybuf);
    sdsfree(c->pending_querybuf);
    c->querybuf = ((void*)0);


    if (c->flags & CLIENT_BLOCKED) unblockClient(c);
    dictRelease(c->bpop.keys);


    unwatchAllKeys(c);
    listRelease(c->watched_keys);


    pubsubUnsubscribeAllChannels(c,0);
    pubsubUnsubscribeAllPatterns(c,0);
    dictRelease(c->pubsub_channels);
    listRelease(c->pubsub_patterns);


    listRelease(c->reply);
    freeClientArgv(c);




    unlinkClient(c);



    if (c->flags & CLIENT_SLAVE) {
        if (c->replstate == SLAVE_STATE_SEND_BULK) {
            if (c->repldbfd != -1) close(c->repldbfd);
            if (c->replpreamble) sdsfree(c->replpreamble);
        }
        list *l = (c->flags & CLIENT_MONITOR) ? server.monitors : server.slaves;
        ln = listSearchKey(l,c);
        serverAssert(ln != ((void*)0));
        listDelNode(l,ln);



        if (c->flags & CLIENT_SLAVE && listLength(server.slaves) == 0)
            server.repl_no_slaves_since = server.unixtime;
        refreshGoodSlavesCount();

        if (c->replstate == SLAVE_STATE_ONLINE)
            moduleFireServerEvent(REDISMODULE_EVENT_REPLICA_CHANGE,
                                  REDISMODULE_SUBEVENT_REPLICA_CHANGE_OFFLINE,
                                  ((void*)0));
    }



    if (c->flags & CLIENT_MASTER) replicationHandleMasterDisconnection();



    if (c->flags & CLIENT_CLOSE_ASAP) {
        ln = listSearchKey(server.clients_to_close,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.clients_to_close,ln);
    }



    if (c->name) decrRefCount(c->name);
    zfree(c->argv);
    freeClientMultiState(c);
    sdsfree(c->peerid);
    zfree(c);
}
