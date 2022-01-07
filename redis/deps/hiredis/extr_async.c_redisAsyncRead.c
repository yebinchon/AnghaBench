
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int redisContext ;
struct TYPE_6__ {int c; } ;
typedef TYPE_1__ redisAsyncContext ;


 scalar_t__ REDIS_ERR ;
 int _EL_ADD_READ (TYPE_1__*) ;
 int __redisAsyncDisconnect (TYPE_1__*) ;
 scalar_t__ redisBufferRead (int *) ;
 int redisProcessCallbacks (TYPE_1__*) ;

void redisAsyncRead(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);

    if (redisBufferRead(c) == REDIS_ERR) {
        __redisAsyncDisconnect(ac);
    } else {

        _EL_ADD_READ(ac);
        redisProcessCallbacks(ac);
    }
}
