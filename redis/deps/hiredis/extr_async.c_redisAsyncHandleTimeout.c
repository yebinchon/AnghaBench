
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; int err; } ;
typedef TYPE_1__ redisContext ;
typedef int redisCallback ;
struct TYPE_11__ {int * head; } ;
struct TYPE_10__ {TYPE_5__ replies; int (* onConnect ) (TYPE_2__*,int ) ;TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;


 int REDIS_CONNECTED ;
 int REDIS_ERR ;
 int REDIS_ERR_TIMEOUT ;
 scalar_t__ REDIS_OK ;
 int __redisAsyncDisconnect (TYPE_2__*) ;
 int __redisRunCallback (TYPE_2__*,int *,int *) ;
 int __redisSetError (TYPE_1__*,int ,char*) ;
 scalar_t__ __redisShiftCallback (TYPE_5__*,int *) ;
 int stub1 (TYPE_2__*,int ) ;

void redisAsyncHandleTimeout(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    redisCallback cb;

    if ((c->flags & REDIS_CONNECTED) && ac->replies.head == ((void*)0)) {

        return;
    }

    if (!c->err) {
        __redisSetError(c, REDIS_ERR_TIMEOUT, "Timeout");
    }

    if (!(c->flags & REDIS_CONNECTED) && ac->onConnect) {
        ac->onConnect(ac, REDIS_ERR);
    }

    while (__redisShiftCallback(&ac->replies, &cb) == REDIS_OK) {
        __redisRunCallback(ac, &cb, ((void*)0));
    }





    __redisAsyncDisconnect(ac);
}
