
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int RedisModule_Call (int *,char*,char*,char*,int *,char*) ;
 int RedisModule_Log (int *,char*,char*,int,char const*,int ) ;
 int RedisModule_StringPtrLen (int *,int *) ;

int NotifyCallback(RedisModuleCtx *ctx, int type, const char *event,
                   RedisModuleString *key) {


  RedisModule_Log(ctx, "notice", "Got event type %d, event %s, key %s", type,
                  event, RedisModule_StringPtrLen(key, ((void*)0)));

  RedisModule_Call(ctx, "HINCRBY", "csc", "notifications", key, "1");
  return REDISMODULE_OK;
}
