
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_16__ {int key; } ;
typedef TYPE_3__ raxIterator ;
typedef int mstime_t ;
typedef int key ;
struct TYPE_19__ {int el; } ;
struct TYPE_18__ {TYPE_2__* client; int module; } ;
struct TYPE_17__ {int dbid; void* data; int callback; int module; } ;
struct TYPE_15__ {TYPE_1__* db; } ;
struct TYPE_14__ {int id; } ;
typedef int RedisModuleTimerProc ;
typedef scalar_t__ RedisModuleTimerID ;
typedef TYPE_4__ RedisModuleTimer ;
typedef TYPE_5__ RedisModuleCtx ;


 int Timers ;
 int aeCreateTimeEvent (int ,int,int ,int *,int *) ;
 int aeDeleteTimeEvent (int ,int) ;
 int aeTimer ;
 scalar_t__ htonu64 (scalar_t__) ;
 scalar_t__ memcmp (int ,scalar_t__*,int) ;
 int moduleTimerHandler ;
 scalar_t__ raxFind (int ,unsigned char*,int) ;
 int raxInsert (int ,unsigned char*,int,TYPE_4__*,int *) ;
 int raxNext (TYPE_3__*) ;
 scalar_t__ raxNotFound ;
 int raxSeek (TYPE_3__*,char*,int *,int ) ;
 int raxStart (TYPE_3__*,int ) ;
 int raxStop (TYPE_3__*) ;
 TYPE_7__ server ;
 scalar_t__ ustime () ;
 TYPE_4__* zmalloc (int) ;

RedisModuleTimerID RM_CreateTimer(RedisModuleCtx *ctx, mstime_t period, RedisModuleTimerProc callback, void *data) {
    RedisModuleTimer *timer = zmalloc(sizeof(*timer));
    timer->module = ctx->module;
    timer->callback = callback;
    timer->data = data;
    timer->dbid = ctx->client->db->id;
    uint64_t expiretime = ustime()+period*1000;
    uint64_t key;

    while(1) {
        key = htonu64(expiretime);
        if (raxFind(Timers, (unsigned char*)&key,sizeof(key)) == raxNotFound) {
            raxInsert(Timers,(unsigned char*)&key,sizeof(key),timer,((void*)0));
            break;
        } else {
            expiretime++;
        }
    }




    if (aeTimer != -1) {
        raxIterator ri;
        raxStart(&ri,Timers);
        raxSeek(&ri,"^",((void*)0),0);
        raxNext(&ri);
        if (memcmp(ri.key,&key,sizeof(key)) == 0) {


            aeDeleteTimeEvent(server.el,aeTimer);
            aeTimer = -1;
        }
        raxStop(&ri);
    }



    if (aeTimer == -1)
        aeTimer = aeCreateTimeEvent(server.el,period,moduleTimerHandler,((void*)0),((void*)0));

    return key;
}
