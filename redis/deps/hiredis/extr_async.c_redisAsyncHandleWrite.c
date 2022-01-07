
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; TYPE_1__* funcs; } ;
typedef TYPE_2__ redisContext ;
struct TYPE_9__ {TYPE_2__ c; } ;
typedef TYPE_3__ redisAsyncContext ;
struct TYPE_7__ {int (* async_write ) (TYPE_3__*) ;} ;


 int REDIS_CONNECTED ;
 scalar_t__ REDIS_OK ;
 scalar_t__ __redisAsyncHandleConnect (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

void redisAsyncHandleWrite(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);

    if (!(c->flags & REDIS_CONNECTED)) {

        if (__redisAsyncHandleConnect(ac) != REDIS_OK)
            return;

        if (!(c->flags & REDIS_CONNECTED))
            return;
    }

    c->funcs->async_write(ac);
}
