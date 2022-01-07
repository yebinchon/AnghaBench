
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 int REDISMODULE_LIST_HEAD ;
 int REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int * RedisModule_Call (int *,char const*,char*,int **,int) ;
 int RedisModule_CloseKey (int *) ;
 int * RedisModule_CreateString (int *,char*,int ) ;
 int RedisModule_FreeCallReply (int *) ;
 int RedisModule_FreeString (int *,int *) ;
 int RedisModule_ListPush (int *,int ,int *) ;
 int * RedisModule_OpenKey (int *,int ,int) ;
 int RedisModule_ReplyWithCallReply (int *,int *) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;
 int RedisModule_StringAppendBuffer (int *,int *,char const*,size_t) ;
 char* RedisModule_StringPtrLen (int *,size_t*) ;
 int in_log_command ;
 int log_key_name ;

int CommandFilter_LogCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    RedisModuleString *s = RedisModule_CreateString(ctx, "", 0);

    int i;
    for (i = 1; i < argc; i++) {
        size_t arglen;
        const char *arg = RedisModule_StringPtrLen(argv[i], &arglen);

        if (i > 1) RedisModule_StringAppendBuffer(ctx, s, " ", 1);
        RedisModule_StringAppendBuffer(ctx, s, arg, arglen);
    }

    RedisModuleKey *log = RedisModule_OpenKey(ctx, log_key_name, REDISMODULE_WRITE|REDISMODULE_READ);
    RedisModule_ListPush(log, REDISMODULE_LIST_HEAD, s);
    RedisModule_CloseKey(log);
    RedisModule_FreeString(ctx, s);

    in_log_command = 1;

    size_t cmdlen;
    const char *cmdname = RedisModule_StringPtrLen(argv[1], &cmdlen);
    RedisModuleCallReply *reply = RedisModule_Call(ctx, cmdname, "v", &argv[2], argc - 2);
    if (reply) {
        RedisModule_ReplyWithCallReply(ctx, reply);
        RedisModule_FreeCallReply(reply);
    } else {
        RedisModule_ReplyWithSimpleString(ctx, "Unknown command or invalid arguments");
    }

    in_log_command = 0;

    return REDISMODULE_OK;
}
