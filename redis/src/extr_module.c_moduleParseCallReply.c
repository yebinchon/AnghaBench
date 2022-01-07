
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int* proto; } ;
typedef TYPE_1__ RedisModuleCallReply ;


 int REDISMODULE_REPLYFLAG_TOPARSE ;
 int moduleParseCallReply_Array (TYPE_1__*) ;
 int moduleParseCallReply_BulkString (TYPE_1__*) ;
 int moduleParseCallReply_Int (TYPE_1__*) ;
 int moduleParseCallReply_SimpleString (TYPE_1__*) ;

void moduleParseCallReply(RedisModuleCallReply *reply) {
    if (!(reply->flags & REDISMODULE_REPLYFLAG_TOPARSE)) return;
    reply->flags &= ~REDISMODULE_REPLYFLAG_TOPARSE;

    switch(reply->proto[0]) {
    case ':': moduleParseCallReply_Int(reply); break;
    case '$': moduleParseCallReply_BulkString(reply); break;
    case '-':
    case '+': moduleParseCallReply_SimpleString(reply); break;
    case '*': moduleParseCallReply_Array(reply); break;
    }
}
