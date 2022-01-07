
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RedisModuleDict {int rax; } ;
typedef struct RedisModuleDict RedisModuleDict ;
typedef int RedisModuleCtx ;


 int REDISMODULE_AM_DICT ;
 int autoMemoryAdd (int *,int ,struct RedisModuleDict*) ;
 int raxNew () ;
 struct RedisModuleDict* zmalloc (int) ;

RedisModuleDict *RM_CreateDict(RedisModuleCtx *ctx) {
    struct RedisModuleDict *d = zmalloc(sizeof(*d));
    d->rax = raxNew();
    if (ctx != ((void*)0)) autoMemoryAdd(ctx,REDISMODULE_AM_DICT,d);
    return d;
}
