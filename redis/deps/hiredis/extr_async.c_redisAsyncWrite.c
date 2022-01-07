
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int redisContext ;
struct TYPE_7__ {int c; } ;
typedef TYPE_1__ redisAsyncContext ;


 scalar_t__ REDIS_ERR ;
 int _EL_ADD_READ (TYPE_1__*) ;
 int _EL_ADD_WRITE (TYPE_1__*) ;
 int _EL_DEL_WRITE (TYPE_1__*) ;
 int __redisAsyncDisconnect (TYPE_1__*) ;
 scalar_t__ redisBufferWrite (int *,int*) ;

void redisAsyncWrite(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    int done = 0;

    if (redisBufferWrite(c,&done) == REDIS_ERR) {
        __redisAsyncDisconnect(ac);
    } else {

        if (!done)
            _EL_ADD_WRITE(ac);
        else
            _EL_DEL_WRITE(ac);


        _EL_ADD_READ(ac);
    }
}
