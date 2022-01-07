
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aeEventLoop {int dummy; } ;
typedef int robj ;
struct TYPE_2__ {int unblocked_clients; int clients_waiting_acks; scalar_t__ get_ack_from_slaves; int slaveseldb; int slaves; int * masterhost; scalar_t__ active_expire_enabled; scalar_t__ cluster_enabled; int el; } ;


 int ACTIVE_EXPIRE_CYCLE_FAST ;
 int UNUSED (struct aeEventLoop*) ;
 int activeExpireCycle (int ) ;
 int aeSetDontWait (int ,int ) ;
 int clusterBeforeSleep () ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 int flushAppendOnlyFile (int ) ;
 int freeClientsInAsyncFreeQueue () ;
 int handleClientsWithPendingWritesUsingThreads () ;
 scalar_t__ listLength (int ) ;
 scalar_t__ moduleCount () ;
 int moduleHandleBlockedClients () ;
 int moduleReleaseGIL () ;
 int processClientsWaitingReplicas () ;
 int processUnblockedClients () ;
 int replicationFeedSlaves (int ,int ,int **,int) ;
 TYPE_1__ server ;
 int tlsHasPendingData () ;
 int tlsProcessPendingData () ;

void beforeSleep(struct aeEventLoop *eventLoop) {
    UNUSED(eventLoop);


    tlsProcessPendingData();

    aeSetDontWait(server.el, tlsHasPendingData());





    if (server.cluster_enabled) clusterBeforeSleep();



    if (server.active_expire_enabled && server.masterhost == ((void*)0))
        activeExpireCycle(ACTIVE_EXPIRE_CYCLE_FAST);



    if (server.get_ack_from_slaves) {
        robj *argv[3];

        argv[0] = createStringObject("REPLCONF",8);
        argv[1] = createStringObject("GETACK",6);
        argv[2] = createStringObject("*",1);
        replicationFeedSlaves(server.slaves, server.slaveseldb, argv, 3);
        decrRefCount(argv[0]);
        decrRefCount(argv[1]);
        decrRefCount(argv[2]);
        server.get_ack_from_slaves = 0;
    }



    if (listLength(server.clients_waiting_acks))
        processClientsWaitingReplicas();



    if (moduleCount()) moduleHandleBlockedClients();


    if (listLength(server.unblocked_clients))
        processUnblockedClients();


    flushAppendOnlyFile(0);


    handleClientsWithPendingWritesUsingThreads();


    freeClientsInAsyncFreeQueue();




    if (moduleCount()) moduleReleaseGIL();
}
