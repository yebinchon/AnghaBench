
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_6__ {TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;


 int REDIS_FREEING ;
 int REDIS_IN_CALLBACK ;
 int __redisAsyncFree (TYPE_2__*) ;

void redisAsyncFree(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    c->flags |= REDIS_FREEING;
    if (!(c->flags & REDIS_IN_CALLBACK))
        __redisAsyncFree(ac);
}
