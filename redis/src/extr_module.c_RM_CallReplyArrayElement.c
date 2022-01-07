
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* array; } ;
struct TYPE_7__ {scalar_t__ type; size_t len; TYPE_1__ val; } ;
typedef TYPE_2__ RedisModuleCallReply ;


 scalar_t__ REDISMODULE_REPLY_ARRAY ;
 int moduleParseCallReply (TYPE_2__*) ;

RedisModuleCallReply *RM_CallReplyArrayElement(RedisModuleCallReply *reply, size_t idx) {
    moduleParseCallReply(reply);
    if (reply->type != REDISMODULE_REPLY_ARRAY) return ((void*)0);
    if (idx >= reply->len) return ((void*)0);
    return reply->val.array+idx;
}
