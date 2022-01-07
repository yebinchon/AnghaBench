
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* client; } ;
struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int dict; } ;
typedef TYPE_3__ RedisModuleCtx ;


 unsigned long long dictSize (int ) ;

unsigned long long RM_DbSize(RedisModuleCtx *ctx) {
    return dictSize(ctx->client->db->dict);
}
