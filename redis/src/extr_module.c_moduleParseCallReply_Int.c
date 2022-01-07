
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ll; } ;
struct TYPE_5__ {char* proto; int protolen; int type; TYPE_1__ val; } ;
typedef TYPE_2__ RedisModuleCallReply ;


 int REDISMODULE_REPLY_INTEGER ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,int *) ;

void moduleParseCallReply_Int(RedisModuleCallReply *reply) {
    char *proto = reply->proto;
    char *p = strchr(proto+1,'\r');

    string2ll(proto+1,p-proto-1,&reply->val.ll);
    reply->protolen = p-proto+2;
    reply->type = REDISMODULE_REPLY_INTEGER;
}
