
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int dbnum; } ;
typedef TYPE_1__ RedisModuleFlushInfo ;
typedef int * RedisModuleEvent ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 int REDISMODULE_NOT_USED (int *) ;
 scalar_t__ REDISMODULE_SUBEVENT_FLUSHDB_START ;
 int * RedisModule_Call (int *,char*,char*) ;
 long long RedisModule_CallReplyInteger (int *) ;
 int RedisModule_FreeCallReply (int *) ;
 int printf (char*,...) ;

void flushdbCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(ctx);
    REDISMODULE_NOT_USED(e);

    RedisModuleFlushInfo *fi = data;
    if (sub == REDISMODULE_SUBEVENT_FLUSHDB_START) {
        if (fi->dbnum != -1) {
            RedisModuleCallReply *reply;
            reply = RedisModule_Call(ctx,"DBSIZE","");
            long long numkeys = RedisModule_CallReplyInteger(reply);
            printf("FLUSHDB event of database %d started (%lld keys in DB)\n",
                fi->dbnum, numkeys);
            RedisModule_FreeCallReply(reply);
        } else {
            printf("FLUSHALL event started\n");
        }
    } else {
        if (fi->dbnum != -1) {
            printf("FLUSHDB event of database %d ended\n",fi->dbnum);
        } else {
            printf("FLUSHALL event ended\n");
        }
    }
}
