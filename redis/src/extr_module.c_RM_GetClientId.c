
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* client; } ;
struct TYPE_4__ {unsigned long long id; } ;
typedef TYPE_2__ RedisModuleCtx ;



unsigned long long RM_GetClientId(RedisModuleCtx *ctx) {
    if (ctx->client == ((void*)0)) return 0;
    return ctx->client->id;
}
