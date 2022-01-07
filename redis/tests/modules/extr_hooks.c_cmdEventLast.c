
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_val_int; scalar_t__ last_val_string; } ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ EventElement ;


 int REDISMODULE_OK ;
 TYPE_1__* RedisModule_DictGet (int ,int *,int *) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 int RedisModule_ReplyWithNull (int *) ;
 int RedisModule_ReplyWithString (int *,scalar_t__) ;
 int RedisModule_WrongArity (int *) ;
 int event_log ;

int cmdEventLast(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    if (argc != 2){
        RedisModule_WrongArity(ctx);
        return REDISMODULE_OK;
    }

    EventElement *event = RedisModule_DictGet(event_log, argv[1], ((void*)0));
    if (event && event->last_val_string)
        RedisModule_ReplyWithString(ctx, event->last_val_string);
    else if (event)
        RedisModule_ReplyWithLongLong(ctx, event->last_val_int);
    else
        RedisModule_ReplyWithNull(ctx);
    return REDISMODULE_OK;
}
