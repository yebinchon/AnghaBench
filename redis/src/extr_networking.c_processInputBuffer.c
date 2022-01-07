
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t qb_pos; char* querybuf; int flags; scalar_t__ reqtype; int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_12__ {scalar_t__ gopher_enabled; scalar_t__ lua_timedout; } ;
struct TYPE_10__ {scalar_t__ ptr; } ;


 int CLIENT_BLOCKED ;
 int CLIENT_CLOSE_AFTER_REPLY ;
 int CLIENT_CLOSE_ASAP ;
 int CLIENT_MASTER ;
 int CLIENT_PENDING_COMMAND ;
 int CLIENT_PENDING_READ ;
 int CLIENT_SLAVE ;
 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 scalar_t__ PROTO_REQ_INLINE ;
 scalar_t__ PROTO_REQ_MULTIBULK ;
 scalar_t__ clientsArePaused () ;
 scalar_t__ processCommandAndResetClient (TYPE_2__*) ;
 int processGopherRequest (TYPE_2__*) ;
 scalar_t__ processInlineBuffer (TYPE_2__*) ;
 scalar_t__ processMultibulkBuffer (TYPE_2__*) ;
 int resetClient (TYPE_2__*) ;
 size_t sdslen (char*) ;
 int sdsrange (char*,int,int) ;
 TYPE_3__ server ;
 int serverPanic (char*) ;

void processInputBuffer(client *c) {

    while(c->qb_pos < sdslen(c->querybuf)) {

        if (!(c->flags & CLIENT_SLAVE) && clientsArePaused()) break;


        if (c->flags & CLIENT_BLOCKED) break;



        if (c->flags & CLIENT_PENDING_COMMAND) break;





        if (server.lua_timedout && c->flags & CLIENT_MASTER) break;






        if (c->flags & (CLIENT_CLOSE_AFTER_REPLY|CLIENT_CLOSE_ASAP)) break;


        if (!c->reqtype) {
            if (c->querybuf[c->qb_pos] == '*') {
                c->reqtype = PROTO_REQ_MULTIBULK;
            } else {
                c->reqtype = PROTO_REQ_INLINE;
            }
        }

        if (c->reqtype == PROTO_REQ_INLINE) {
            if (processInlineBuffer(c) != C_OK) break;


            if (server.gopher_enabled &&
                ((c->argc == 1 && ((char*)(c->argv[0]->ptr))[0] == '/') ||
                  c->argc == 0))
            {
                processGopherRequest(c);
                resetClient(c);
                c->flags |= CLIENT_CLOSE_AFTER_REPLY;
                break;
            }
        } else if (c->reqtype == PROTO_REQ_MULTIBULK) {
            if (processMultibulkBuffer(c) != C_OK) break;
        } else {
            serverPanic("Unknown request type");
        }


        if (c->argc == 0) {
            resetClient(c);
        } else {



            if (c->flags & CLIENT_PENDING_READ) {
                c->flags |= CLIENT_PENDING_COMMAND;
                break;
            }


            if (processCommandAndResetClient(c) == C_ERR) {



                return;
            }
        }
    }


    if (c->qb_pos) {
        sdsrange(c->querybuf,c->qb_pos,-1);
        c->qb_pos = 0;
    }
}
