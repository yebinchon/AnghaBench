
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int listNode ;
typedef int client ;
struct TYPE_2__ {int clients_waiting_acks; } ;


 int listDelNode (int ,int *) ;
 int * listSearchKey (int ,int *) ;
 TYPE_1__ server ;
 int serverAssert (int ) ;

void unblockClientWaitingReplicas(client *c) {
    listNode *ln = listSearchKey(server.clients_waiting_acks,c);
    serverAssert(ln != ((void*)0));
    listDelNode(server.clients_waiting_acks,ln);
}
