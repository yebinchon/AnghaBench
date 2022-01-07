
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* reader; TYPE_1__* funcs; scalar_t__ err; } ;
typedef TYPE_2__ redisContext ;
typedef int buf ;
struct TYPE_9__ {int errstr; int err; } ;
struct TYPE_7__ {int (* read ) (TYPE_2__*,char*,int) ;} ;


 int REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int __redisSetError (TYPE_2__*,int ,int ) ;
 scalar_t__ redisReaderFeed (TYPE_4__*,char*,int) ;
 int stub1 (TYPE_2__*,char*,int) ;

int redisBufferRead(redisContext *c) {
    char buf[1024*16];
    int nread;


    if (c->err)
        return REDIS_ERR;

    nread = c->funcs->read(c, buf, sizeof(buf));
    if (nread > 0) {
        if (redisReaderFeed(c->reader, buf, nread) != REDIS_OK) {
            __redisSetError(c, c->reader->err, c->reader->errstr);
            return REDIS_ERR;
        } else {
        }
    } else if (nread < 0) {
        return REDIS_ERR;
    }
    return REDIS_OK;
}
