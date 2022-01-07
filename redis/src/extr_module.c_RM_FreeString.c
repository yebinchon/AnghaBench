
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_AM_STRING ;
 int autoMemoryFreed (int *,int ,int *) ;
 int decrRefCount (int *) ;

void RM_FreeString(RedisModuleCtx *ctx, RedisModuleString *str) {
    decrRefCount(str);
    if (ctx != ((void*)0)) autoMemoryFreed(ctx,REDISMODULE_AM_STRING,str);
}
