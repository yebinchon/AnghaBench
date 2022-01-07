
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ EventElement ;


 int REDISMODULE_OK ;
 TYPE_1__* RedisModule_DictGet (int ,int *,int *) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 int RedisModule_WrongArity (int *) ;
 int event_log ;

int cmdEventCount(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 2){
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }

    EventElement *event = RedisModule_DictGet(event_log, argv[1], ((void*)0));
    RedisModule_ReplyWithLongLong(ctx, event? event->count: 0);
    return REDISMODULE_OK;
}
