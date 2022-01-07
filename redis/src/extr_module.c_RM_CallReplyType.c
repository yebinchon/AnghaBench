
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ RedisModuleCallReply ;


 int REDISMODULE_REPLY_UNKNOWN ;

int RM_CallReplyType(RedisModuleCallReply *reply) {
    if (!reply) return REDISMODULE_REPLY_UNKNOWN;
    return reply->type;
}
