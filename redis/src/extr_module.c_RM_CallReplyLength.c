
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; size_t len; } ;
typedef TYPE_1__ RedisModuleCallReply ;





 int moduleParseCallReply (TYPE_1__*) ;

size_t RM_CallReplyLength(RedisModuleCallReply *reply) {
    moduleParseCallReply(reply);
    switch(reply->type) {
    case 128:
    case 129:
    case 130:
        return reply->len;
    default:
        return 0;
    }
}
