
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_10__ {int (* onConnect ) (TYPE_2__*,int) ;TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;


 int REDIS_CONNECTED ;
 scalar_t__ REDIS_ERR ;
 int REDIS_OK ;
 int __redisAsyncDisconnect (TYPE_2__*) ;
 scalar_t__ redisCheckConnectDone (TYPE_1__*,int*) ;
 int redisCheckSocketError (TYPE_1__*) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 int stub2 (TYPE_2__*,int) ;

__attribute__((used)) static int __redisAsyncHandleConnect(redisAsyncContext *ac) {
    int completed = 0;
    redisContext *c = &(ac->c);
    if (redisCheckConnectDone(c, &completed) == REDIS_ERR) {

        redisCheckSocketError(c);
        if (ac->onConnect) ac->onConnect(ac, REDIS_ERR);
        __redisAsyncDisconnect(ac);
        return REDIS_ERR;
    } else if (completed == 1) {

        if (ac->onConnect) ac->onConnect(ac, REDIS_OK);
        c->flags |= REDIS_CONNECTED;
        return REDIS_OK;
    } else {
        return REDIS_OK;
    }
}
