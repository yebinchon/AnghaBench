
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleCtx ;


 int replyWithStatus (int *,char const*,char*) ;

int RM_ReplyWithError(RedisModuleCtx *ctx, const char *err) {
    return replyWithStatus(ctx,err,"-");
}
