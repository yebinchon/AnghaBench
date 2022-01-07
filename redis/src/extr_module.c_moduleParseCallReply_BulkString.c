
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* str; } ;
struct TYPE_5__ {char* proto; int protolen; long long len; int type; TYPE_1__ val; } ;
typedef TYPE_2__ RedisModuleCallReply ;


 int REDISMODULE_REPLY_NULL ;
 int REDISMODULE_REPLY_STRING ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;

void moduleParseCallReply_BulkString(RedisModuleCallReply *reply) {
    char *proto = reply->proto;
    char *p = strchr(proto+1,'\r');
    long long bulklen;

    string2ll(proto+1,p-proto-1,&bulklen);
    if (bulklen == -1) {
        reply->protolen = p-proto+2;
        reply->type = REDISMODULE_REPLY_NULL;
    } else {
        reply->val.str = p+2;
        reply->len = bulklen;
        reply->protolen = p-proto+2+bulklen+2;
        reply->type = REDISMODULE_REPLY_STRING;
    }
}
