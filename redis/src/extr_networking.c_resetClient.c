
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int redisCommandProc ;
struct TYPE_6__ {int bulklen; int flags; scalar_t__ multibulklen; scalar_t__ reqtype; TYPE_1__* cmd; } ;
typedef TYPE_2__ client ;
struct TYPE_5__ {int * proc; } ;


 int CLIENT_ASKING ;
 int CLIENT_MULTI ;
 int CLIENT_REPLY_SKIP ;
 int CLIENT_REPLY_SKIP_NEXT ;
 int * askingCommand ;
 int freeClientArgv (TYPE_2__*) ;

void resetClient(client *c) {
    redisCommandProc *prevcmd = c->cmd ? c->cmd->proc : ((void*)0);

    freeClientArgv(c);
    c->reqtype = 0;
    c->multibulklen = 0;
    c->bulklen = -1;



    if (!(c->flags & CLIENT_MULTI) && prevcmd != askingCommand)
        c->flags &= ~CLIENT_ASKING;




    c->flags &= ~CLIENT_REPLY_SKIP;
    if (c->flags & CLIENT_REPLY_SKIP_NEXT) {
        c->flags |= CLIENT_REPLY_SKIP;
        c->flags &= ~CLIENT_REPLY_SKIP_NEXT;
    }
}
