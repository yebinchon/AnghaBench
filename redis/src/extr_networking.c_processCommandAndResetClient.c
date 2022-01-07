
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ btype; scalar_t__ qb_pos; int querybuf; scalar_t__ read_reploff; scalar_t__ reploff; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {TYPE_1__* current_client; } ;


 scalar_t__ BLOCKED_MODULE ;
 int CLIENT_BLOCKED ;
 int CLIENT_MASTER ;
 int CLIENT_MULTI ;
 int C_ERR ;
 scalar_t__ C_OK ;
 scalar_t__ processCommand (TYPE_1__*) ;
 int resetClient (TYPE_1__*) ;
 scalar_t__ sdslen (int ) ;
 TYPE_2__ server ;

int processCommandAndResetClient(client *c) {
    int deadclient = 0;
    server.current_client = c;
    if (processCommand(c) == C_OK) {
        if (c->flags & CLIENT_MASTER && !(c->flags & CLIENT_MULTI)) {

            c->reploff = c->read_reploff - sdslen(c->querybuf) + c->qb_pos;
        }





        if (!(c->flags & CLIENT_BLOCKED) ||
            c->btype != BLOCKED_MODULE)
        {
            resetClient(c);
        }
    }
    if (server.current_client == ((void*)0)) deadclient = 1;
    server.current_client = ((void*)0);



    return deadclient ? C_ERR : C_OK;
}
