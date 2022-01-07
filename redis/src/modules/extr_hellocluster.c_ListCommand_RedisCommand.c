
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NODE_ID_LEN ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int RedisModule_FreeClusterNodesList (char**) ;
 int RedisModule_GetClusterNodeInfo (int *,char*,int *,int *,int*,int *) ;
 char** RedisModule_GetClusterNodesList (int *,size_t*) ;
 int RedisModule_ReplyWithArray (int *,int) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,int) ;
 int RedisModule_ReplyWithStringBuffer (int *,char*,int ) ;

int ListCommand_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    size_t numnodes;
    char **ids = RedisModule_GetClusterNodesList(ctx,&numnodes);
    if (ids == ((void*)0)) {
        return RedisModule_ReplyWithError(ctx,"Cluster not enabled");
    }

    RedisModule_ReplyWithArray(ctx,numnodes);
    for (size_t j = 0; j < numnodes; j++) {
        int port;
        RedisModule_GetClusterNodeInfo(ctx,ids[j],((void*)0),((void*)0),&port,((void*)0));
        RedisModule_ReplyWithArray(ctx,2);
        RedisModule_ReplyWithStringBuffer(ctx,ids[j],REDISMODULE_NODE_ID_LEN);
        RedisModule_ReplyWithLongLong(ctx,port);
    }
    RedisModule_FreeClusterNodesList(ids);
    return REDISMODULE_OK;
}
