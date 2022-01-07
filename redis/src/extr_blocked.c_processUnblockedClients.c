
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
struct TYPE_8__ {int flags; scalar_t__ querybuf; } ;
typedef TYPE_2__ client ;
struct TYPE_9__ {int unblocked_clients; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_UNBLOCKED ;
 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 int processInputBufferAndReplicate (TYPE_2__*) ;
 scalar_t__ sdslen (scalar_t__) ;
 TYPE_3__ server ;
 int serverAssert (int ) ;

void processUnblockedClients(void) {
    listNode *ln;
    client *c;

    while (listLength(server.unblocked_clients)) {
        ln = listFirst(server.unblocked_clients);
        serverAssert(ln != ((void*)0));
        c = ln->value;
        listDelNode(server.unblocked_clients,ln);
        c->flags &= ~CLIENT_UNBLOCKED;





        if (!(c->flags & CLIENT_BLOCKED)) {
            if (c->querybuf && sdslen(c->querybuf) > 0) {
                processInputBufferAndReplicate(c);
            }
        }
    }
}
