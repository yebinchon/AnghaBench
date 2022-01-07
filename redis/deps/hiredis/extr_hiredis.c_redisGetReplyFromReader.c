
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* reader; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_6__ {int errstr; int err; } ;


 scalar_t__ REDIS_ERR ;
 int REDIS_OK ;
 int __redisSetError (TYPE_1__*,int ,int ) ;
 scalar_t__ redisReaderGetReply (TYPE_2__*,void**) ;

int redisGetReplyFromReader(redisContext *c, void **reply) {
    if (redisReaderGetReply(c->reader,reply) == REDIS_ERR) {
        __redisSetError(c,c->reader->err,c->reader->errstr);
        return REDIS_ERR;
    }
    return REDIS_OK;
}
