
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_20__ {TYPE_5__* value; } ;
typedef TYPE_2__ listNode ;
struct TYPE_21__ {int flags; int argc; scalar_t__ argv; } ;
typedef TYPE_3__ client ;
struct TYPE_23__ {TYPE_1__* module; int * disconnect_callback; int reply_client; scalar_t__ privdata; int (* free_privdata ) (TYPE_4__*,scalar_t__) ;TYPE_3__* client; int (* reply_callback ) (TYPE_4__*,void**,int ) ;int blocked_on_keys; } ;
struct TYPE_22__ {TYPE_3__* client; TYPE_1__* module; scalar_t__ blocked_privdata; int flags; TYPE_5__* blocked_client; int * blocked_ready_key; } ;
struct TYPE_19__ {int blocked_clients; } ;
struct TYPE_18__ {int clients_pending_write; int * module_blocked_pipe; } ;
typedef TYPE_4__ RedisModuleCtx ;
typedef TYPE_5__ RedisModuleBlockedClient ;


 int AddReplyFromClient (TYPE_3__*,int ) ;
 int CLIENT_PENDING_WRITE ;
 int REDISMODULE_CTX_BLOCKED_DISCONNECTED ;
 int REDISMODULE_CTX_BLOCKED_REPLY ;
 TYPE_4__ REDISMODULE_CTX_INIT ;
 scalar_t__ clientHasPendingReplies (TYPE_3__*) ;
 int freeClient (int ) ;
 int listAddNodeHead (int ,TYPE_3__*) ;
 int listDelNode (int ,TYPE_2__*) ;
 TYPE_2__* listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 int moduleFreeContext (TYPE_4__*) ;
 int moduleUnblockedClients ;
 int moduleUnblockedClientsMutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read (int ,char*,int) ;
 TYPE_10__ server ;
 int stub1 (TYPE_4__*,void**,int ) ;
 int stub2 (TYPE_4__*,scalar_t__) ;
 int unblockClient (TYPE_3__*) ;
 int zfree (TYPE_5__*) ;

void moduleHandleBlockedClients(void) {
    listNode *ln;
    RedisModuleBlockedClient *bc;

    pthread_mutex_lock(&moduleUnblockedClientsMutex);


    char buf[1];
    while (read(server.module_blocked_pipe[0],buf,1) == 1);
    while (listLength(moduleUnblockedClients)) {
        ln = listFirst(moduleUnblockedClients);
        bc = ln->value;
        client *c = bc->client;
        listDelNode(moduleUnblockedClients,ln);
        pthread_mutex_unlock(&moduleUnblockedClientsMutex);
        if (c && !bc->blocked_on_keys && bc->reply_callback) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            ctx.flags |= REDISMODULE_CTX_BLOCKED_REPLY;
            ctx.blocked_privdata = bc->privdata;
            ctx.blocked_ready_key = ((void*)0);
            ctx.module = bc->module;
            ctx.client = bc->client;
            ctx.blocked_client = bc;
            bc->reply_callback(&ctx,(void**)c->argv,c->argc);
            moduleFreeContext(&ctx);
        }


        if (bc->privdata && bc->free_privdata) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            if (c == ((void*)0))
                ctx.flags |= REDISMODULE_CTX_BLOCKED_DISCONNECTED;
            ctx.blocked_privdata = bc->privdata;
            ctx.module = bc->module;
            ctx.client = bc->client;
            bc->free_privdata(&ctx,bc->privdata);
            moduleFreeContext(&ctx);
        }





        if (c) AddReplyFromClient(c, bc->reply_client);
        freeClient(bc->reply_client);

        if (c != ((void*)0)) {



            bc->disconnect_callback = ((void*)0);
            unblockClient(c);



            if (clientHasPendingReplies(c) &&
                !(c->flags & CLIENT_PENDING_WRITE))
            {
                c->flags |= CLIENT_PENDING_WRITE;
                listAddNodeHead(server.clients_pending_write,c);
            }
        }




        bc->module->blocked_clients--;
        zfree(bc);


        pthread_mutex_lock(&moduleUnblockedClientsMutex);
    }
    pthread_mutex_unlock(&moduleUnblockedClientsMutex);
}
