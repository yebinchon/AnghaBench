
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCallReply ;


 scalar_t__ REDISMODULE_REPLY_STRING ;
 scalar_t__ RedisModule_CallReplyType (int *) ;
 int * RedisModule_CreateString (int *,char*,size_t) ;
 int * RedisModule_CreateStringFromCallReply (int *) ;
 int RedisModule_Log (int *,char*,char*,char const*,...) ;
 scalar_t__ RedisModule_StringCompare (int *,int *) ;
 char* RedisModule_StringPtrLen (int *,int *) ;

int TestAssertStringReply(RedisModuleCtx *ctx, RedisModuleCallReply *reply, char *str, size_t len) {
    RedisModuleString *mystr, *expected;

    if (RedisModule_CallReplyType(reply) != REDISMODULE_REPLY_STRING) {
        RedisModule_Log(ctx,"warning","Unexpected reply type %d",
            RedisModule_CallReplyType(reply));
        return 0;
    }
    mystr = RedisModule_CreateStringFromCallReply(reply);
    expected = RedisModule_CreateString(ctx,str,len);
    if (RedisModule_StringCompare(mystr,expected) != 0) {
        const char *mystr_ptr = RedisModule_StringPtrLen(mystr,((void*)0));
        const char *expected_ptr = RedisModule_StringPtrLen(expected,((void*)0));
        RedisModule_Log(ctx,"warning",
            "Unexpected string reply '%s' (instead of '%s')",
            mystr_ptr, expected_ptr);
        return 0;
    }
    return 1;
}
