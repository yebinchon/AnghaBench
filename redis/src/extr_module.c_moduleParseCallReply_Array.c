
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int array; } ;
struct TYPE_6__ {char* proto; int protolen; long long len; int flags; int type; int ctx; TYPE_1__ val; } ;
typedef TYPE_2__ RedisModuleCallReply ;


 int REDISMODULE_REPLYFLAG_NESTED ;
 int REDISMODULE_REPLYFLAG_TOPARSE ;
 int REDISMODULE_REPLY_ARRAY ;
 int REDISMODULE_REPLY_NULL ;
 int moduleParseCallReply (TYPE_2__*) ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;
 int zmalloc (int) ;

void moduleParseCallReply_Array(RedisModuleCallReply *reply) {
    char *proto = reply->proto;
    char *p = strchr(proto+1,'\r');
    long long arraylen, j;

    string2ll(proto+1,p-proto-1,&arraylen);
    p += 2;

    if (arraylen == -1) {
        reply->protolen = p-proto;
        reply->type = REDISMODULE_REPLY_NULL;
        return;
    }

    reply->val.array = zmalloc(sizeof(RedisModuleCallReply)*arraylen);
    reply->len = arraylen;
    for (j = 0; j < arraylen; j++) {
        RedisModuleCallReply *ele = reply->val.array+j;
        ele->flags = REDISMODULE_REPLYFLAG_NESTED |
                     REDISMODULE_REPLYFLAG_TOPARSE;
        ele->proto = p;
        ele->ctx = reply->ctx;
        moduleParseCallReply(ele);
        p += ele->protolen;
    }
    reply->protolen = p-proto;
    reply->type = REDISMODULE_REPLY_ARRAY;
}
