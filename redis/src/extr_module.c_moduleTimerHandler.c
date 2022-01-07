
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef void aeEventLoop ;
struct TYPE_12__ {int key_len; scalar_t__ key; TYPE_2__* data; } ;
typedef TYPE_1__ raxIterator ;
typedef int expiretime ;
struct TYPE_14__ {int client; int module; } ;
struct TYPE_13__ {int data; int (* callback ) (TYPE_3__*,int ) ;int dbid; int module; } ;
typedef TYPE_2__ RedisModuleTimer ;
typedef TYPE_3__ RedisModuleCtx ;


 int AE_NOMORE ;
 TYPE_3__ REDISMODULE_CTX_INIT ;
 int Timers ;
 int UNUSED (void*) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int moduleFreeContext (TYPE_3__*) ;
 int moduleFreeContextReusedClient ;
 scalar_t__ ntohu64 (scalar_t__) ;
 int raxNext (TYPE_1__*) ;
 int raxRemove (int ,unsigned char*,int ,int *) ;
 int raxSeek (TYPE_1__*,char*,int *,int ) ;
 scalar_t__ raxSize (int ) ;
 int raxStart (TYPE_1__*,int ) ;
 int raxStop (TYPE_1__*) ;
 int selectDb (int ,int ) ;
 int stub1 (TYPE_3__*,int ) ;
 scalar_t__ ustime () ;
 int zfree (TYPE_2__*) ;

int moduleTimerHandler(struct aeEventLoop *eventLoop, long long id, void *clientData) {
    UNUSED(eventLoop);
    UNUSED(id);
    UNUSED(clientData);


    raxIterator ri;
    raxStart(&ri,Timers);
    uint64_t now = ustime();
    long long next_period = 0;
    while(1) {
        raxSeek(&ri,"^",((void*)0),0);
        if (!raxNext(&ri)) break;
        uint64_t expiretime;
        memcpy(&expiretime,ri.key,sizeof(expiretime));
        expiretime = ntohu64(expiretime);
        if (now >= expiretime) {
            RedisModuleTimer *timer = ri.data;
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;

            ctx.module = timer->module;
            ctx.client = moduleFreeContextReusedClient;
            selectDb(ctx.client, timer->dbid);
            timer->callback(&ctx,timer->data);
            moduleFreeContext(&ctx);
            raxRemove(Timers,(unsigned char*)ri.key,ri.key_len,((void*)0));
            zfree(timer);
        } else {
            next_period = (expiretime-now)/1000;
            break;
        }
    }
    raxStop(&ri);


    if (next_period <= 0) next_period = 1;
    return (raxSize(Timers) > 0) ? next_period : AE_NOMORE;
}
