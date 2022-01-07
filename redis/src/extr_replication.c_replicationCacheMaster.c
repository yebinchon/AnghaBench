
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; int * peerid; scalar_t__ bufpos; scalar_t__ reply_bytes; scalar_t__ sentlen; int reply; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {TYPE_1__* master; TYPE_1__* cached_master; } ;
struct TYPE_8__ {int reploff; int read_reploff; int pending_querybuf; int querybuf; } ;


 int CLIENT_MULTI ;
 int LL_NOTICE ;
 int discardTransaction (TYPE_2__*) ;
 int listEmpty (int ) ;
 int replicationHandleMasterDisconnection () ;
 int resetClient (TYPE_2__*) ;
 int sdsclear (int ) ;
 int sdsfree (int *) ;
 TYPE_4__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*) ;
 int unlinkClient (TYPE_2__*) ;

void replicationCacheMaster(client *c) {
    serverAssert(server.master != ((void*)0) && server.cached_master == ((void*)0));
    serverLog(LL_NOTICE,"Caching the disconnected master state.");


    unlinkClient(c);





    sdsclear(server.master->querybuf);
    sdsclear(server.master->pending_querybuf);
    server.master->read_reploff = server.master->reploff;
    if (c->flags & CLIENT_MULTI) discardTransaction(c);
    listEmpty(c->reply);
    c->sentlen = 0;
    c->reply_bytes = 0;
    c->bufpos = 0;
    resetClient(c);



    server.cached_master = server.master;


    if (c->peerid) {
        sdsfree(c->peerid);
        c->peerid = ((void*)0);
    }




    replicationHandleMasterDisconnection();
}
