
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ replstate; int repl_put_online_on_ack; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int clients_pending_write; } ;


 int CLIENT_PENDING_WRITE ;
 scalar_t__ REPL_STATE_NONE ;
 scalar_t__ SLAVE_STATE_ONLINE ;
 int listAddNodeHead (int ,TYPE_1__*) ;
 TYPE_2__ server ;

void clientInstallWriteHandler(client *c) {



    if (!(c->flags & CLIENT_PENDING_WRITE) &&
        (c->replstate == REPL_STATE_NONE ||
         (c->replstate == SLAVE_STATE_ONLINE && !c->repl_put_online_on_ack)))
    {






        c->flags |= CLIENT_PENDING_WRITE;
        listAddNodeHead(server.clients_pending_write,c);
    }
}
