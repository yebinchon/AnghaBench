
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int clients; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_CLOSE_AFTER_REPLY ;
 int addReplySds (TYPE_1__*,int ) ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sdsnew (char*) ;
 TYPE_3__ server ;
 int unblockClient (TYPE_1__*) ;

void disconnectAllBlockedClients(void) {
    listNode *ln;
    listIter li;

    listRewind(server.clients,&li);
    while((ln = listNext(&li))) {
        client *c = listNodeValue(ln);

        if (c->flags & CLIENT_BLOCKED) {
            addReplySds(c,sdsnew(
                "-UNBLOCKED force unblock from blocking operation, "
                "instance state changed (master -> replica?)\r\n"));
            unblockClient(c);
            c->flags |= CLIENT_CLOSE_AFTER_REPLY;
        }
    }
}
