
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* str; } ;
struct TYPE_5__ {char* proto; int len; int protolen; int type; TYPE_1__ val; } ;
typedef TYPE_2__ RedisModuleCallReply ;


 int REDISMODULE_REPLY_ERROR ;
 int REDISMODULE_REPLY_STRING ;
 char* strchr (char*,char) ;

void moduleParseCallReply_SimpleString(RedisModuleCallReply *reply) {
    char *proto = reply->proto;
    char *p = strchr(proto+1,'\r');

    reply->val.str = proto+1;
    reply->len = p-proto-1;
    reply->protolen = p-proto+2;
    reply->type = proto[0] == '+' ? REDISMODULE_REPLY_STRING :
                                    REDISMODULE_REPLY_ERROR;
}
