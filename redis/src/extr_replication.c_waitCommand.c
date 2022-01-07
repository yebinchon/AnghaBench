
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_11__ {long long reploffset; long numreplicas; int timeout; } ;
struct TYPE_12__ {long long woff; int flags; TYPE_1__ bpop; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_13__ {int clients_waiting_acks; scalar_t__ masterhost; } ;


 int BLOCKED_WAIT ;
 int CLIENT_MULTI ;
 scalar_t__ C_OK ;
 int UNIT_MILLISECONDS ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyLongLong (TYPE_2__*,long) ;
 int blockClient (TYPE_2__*,int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_2__*,int ,long*,int *) ;
 scalar_t__ getTimeoutFromObjectOrReply (TYPE_2__*,int ,int *,int ) ;
 int listAddNodeTail (int ,TYPE_2__*) ;
 long replicationCountAcksByOffset (long long) ;
 int replicationRequestAckFromSlaves () ;
 TYPE_4__ server ;

void waitCommand(client *c) {
    mstime_t timeout;
    long numreplicas, ackreplicas;
    long long offset = c->woff;

    if (server.masterhost) {
        addReplyError(c,"WAIT cannot be used with replica instances. Please also note that since Redis 4.0 if a replica is configured to be writable (which is not the default) writes to replicas are just local and are not propagated.");
        return;
    }


    if (getLongFromObjectOrReply(c,c->argv[1],&numreplicas,((void*)0)) != C_OK)
        return;
    if (getTimeoutFromObjectOrReply(c,c->argv[2],&timeout,UNIT_MILLISECONDS)
        != C_OK) return;


    ackreplicas = replicationCountAcksByOffset(c->woff);
    if (ackreplicas >= numreplicas || c->flags & CLIENT_MULTI) {
        addReplyLongLong(c,ackreplicas);
        return;
    }



    c->bpop.timeout = timeout;
    c->bpop.reploffset = offset;
    c->bpop.numreplicas = numreplicas;
    listAddNodeTail(server.clients_waiting_acks,c);
    blockClient(c,BLOCKED_WAIT);



    replicationRequestAckFromSlaves();
}
