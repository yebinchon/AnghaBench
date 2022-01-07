
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sds ;
struct TYPE_11__ {int flags; TYPE_6__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_14__ {char* ptr; } ;
struct TYPE_13__ {char* masterhost; scalar_t__ aof_state; long masterport; scalar_t__ aof_enabled; scalar_t__ cluster_enabled; } ;
struct TYPE_12__ {int ok; } ;


 scalar_t__ AOF_OFF ;
 int CLIENT_SLAVE ;
 scalar_t__ C_OK ;
 int LL_NOTICE ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplySds (TYPE_1__*,int ) ;
 int catClientInfoString (int ,TYPE_1__*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,TYPE_6__*,long*,int *) ;
 int replicationSetMaster (char*,long) ;
 int replicationUnsetMaster () ;
 int restartAOFAfterSYNC () ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,...) ;
 TYPE_2__ shared ;
 int strcasecmp (char*,char*) ;

void replicaofCommand(client *c) {


    if (server.cluster_enabled) {
        addReplyError(c,"REPLICAOF not allowed in cluster mode.");
        return;
    }



    if (!strcasecmp(c->argv[1]->ptr,"no") &&
        !strcasecmp(c->argv[2]->ptr,"one")) {
        if (server.masterhost) {
            replicationUnsetMaster();
            sds client = catClientInfoString(sdsempty(),c);
            serverLog(LL_NOTICE,"MASTER MODE enabled (user request from '%s')",
                client);
            sdsfree(client);


            if (server.aof_enabled && server.aof_state == AOF_OFF) restartAOFAfterSYNC();
        }
    } else {
        long port;

        if (c->flags & CLIENT_SLAVE)
        {



            addReplyError(c, "Command is not valid when client is a replica.");
            return;
        }

        if ((getLongFromObjectOrReply(c, c->argv[2], &port, ((void*)0)) != C_OK))
            return;


        if (server.masterhost && !strcasecmp(server.masterhost,c->argv[1]->ptr)
            && server.masterport == port) {
            serverLog(LL_NOTICE,"REPLICAOF would result into synchronization "
                                "with the master we are already connected "
                                "with. No operation performed.");
            addReplySds(c,sdsnew("+OK Already connected to specified "
                                 "master\r\n"));
            return;
        }


        replicationSetMaster(c->argv[1]->ptr, port);
        sds client = catClientInfoString(sdsempty(),c);
        serverLog(LL_NOTICE,"REPLICAOF %s:%d enabled (user request from '%s')",
            server.masterhost, server.masterport, client);
        sdsfree(client);
    }
    addReply(c,shared.ok);
}
