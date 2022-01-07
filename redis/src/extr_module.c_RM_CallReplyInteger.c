
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long long ll; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ val; } ;
typedef TYPE_2__ RedisModuleCallReply ;


 long long LLONG_MIN ;
 scalar_t__ REDISMODULE_REPLY_INTEGER ;
 int moduleParseCallReply (TYPE_2__*) ;

long long RM_CallReplyInteger(RedisModuleCallReply *reply) {
    moduleParseCallReply(reply);
    if (reply->type != REDISMODULE_REPLY_INTEGER) return LLONG_MIN;
    return reply->val.ll;
}
