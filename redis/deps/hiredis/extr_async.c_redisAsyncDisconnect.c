
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ redisContext ;
struct TYPE_6__ {int * head; } ;
struct TYPE_8__ {TYPE_1__ replies; TYPE_2__ c; } ;
typedef TYPE_3__ redisAsyncContext ;


 int REDIS_DISCONNECTING ;
 int REDIS_IN_CALLBACK ;
 int REDIS_NO_AUTO_FREE ;
 int __redisAsyncDisconnect (TYPE_3__*) ;

void redisAsyncDisconnect(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    c->flags |= REDIS_DISCONNECTING;


    c->flags &= ~REDIS_NO_AUTO_FREE;
    if (!(c->flags & REDIS_IN_CALLBACK) && ac->replies.head == ((void*)0))
        __redisAsyncDisconnect(ac);
}
