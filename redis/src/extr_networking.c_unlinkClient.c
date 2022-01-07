
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int listNode ;
typedef int id ;
struct TYPE_6__ {int flags; scalar_t__ replstate; int * conn; int * client_list_node; int id; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int rdb_pipe_numconns; int unblocked_clients; int clients_pending_read; int clients_pending_write; int ** rdb_pipe_conns; int clients; int clients_index; TYPE_1__* current_client; } ;


 int CLIENT_PENDING_READ ;
 int CLIENT_PENDING_WRITE ;
 int CLIENT_SLAVE ;
 int CLIENT_TRACKING ;
 int CLIENT_UNBLOCKED ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_END ;
 int connClose (int *) ;
 int disableTracking (TYPE_1__*) ;
 int htonu64 (int ) ;
 int listDelNode (int ,int *) ;
 int * listSearchKey (int ,TYPE_1__*) ;
 int raxRemove (int ,unsigned char*,int,int *) ;
 int rdbPipeWriteHandlerConnRemoved (int *) ;
 TYPE_3__ server ;
 int serverAssert (int ) ;

void unlinkClient(client *c) {
    listNode *ln;


    if (server.current_client == c) server.current_client = ((void*)0);




    if (c->conn) {

        if (c->client_list_node) {
            uint64_t id = htonu64(c->id);
            raxRemove(server.clients_index,(unsigned char*)&id,sizeof(id),((void*)0));
            listDelNode(server.clients,c->client_list_node);
            c->client_list_node = ((void*)0);
        }



        if (c->flags & CLIENT_SLAVE &&
            c->replstate == SLAVE_STATE_WAIT_BGSAVE_END &&
            server.rdb_pipe_conns)
        {
            int i;
            for (i=0; i < server.rdb_pipe_numconns; i++) {
                if (server.rdb_pipe_conns[i] == c->conn) {
                    rdbPipeWriteHandlerConnRemoved(c->conn);
                    server.rdb_pipe_conns[i] = ((void*)0);
                    break;
                }
            }
        }
        connClose(c->conn);
        c->conn = ((void*)0);
    }


    if (c->flags & CLIENT_PENDING_WRITE) {
        ln = listSearchKey(server.clients_pending_write,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.clients_pending_write,ln);
        c->flags &= ~CLIENT_PENDING_WRITE;
    }


    if (c->flags & CLIENT_PENDING_READ) {
        ln = listSearchKey(server.clients_pending_read,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.clients_pending_read,ln);
        c->flags &= ~CLIENT_PENDING_READ;
    }



    if (c->flags & CLIENT_UNBLOCKED) {
        ln = listSearchKey(server.unblocked_clients,c);
        serverAssert(ln != ((void*)0));
        listDelNode(server.unblocked_clients,ln);
        c->flags &= ~CLIENT_UNBLOCKED;
    }


    if (c->flags & CLIENT_TRACKING) disableTracking(c);
}
