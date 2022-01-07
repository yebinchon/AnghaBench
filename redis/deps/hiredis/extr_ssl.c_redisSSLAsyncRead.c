
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ pendingWrite; scalar_t__ wantRead; } ;
typedef TYPE_1__ redisSSLContext ;
struct TYPE_12__ {TYPE_1__* privdata; } ;
typedef TYPE_2__ redisContext ;
struct TYPE_13__ {TYPE_2__ c; } ;
typedef TYPE_3__ redisAsyncContext ;


 int REDIS_ERR ;
 int _EL_ADD_READ (TYPE_3__*) ;
 int _EL_ADD_WRITE (TYPE_3__*) ;
 int __redisAsyncDisconnect (TYPE_3__*) ;
 int redisBufferRead (TYPE_2__*) ;
 int redisBufferWrite (TYPE_2__*,int*) ;
 int redisProcessCallbacks (TYPE_3__*) ;

__attribute__((used)) static void redisSSLAsyncRead(redisAsyncContext *ac) {
    int rv;
    redisSSLContext *rssl = ac->c.privdata;
    redisContext *c = &ac->c;

    rssl->wantRead = 0;

    if (rssl->pendingWrite) {
        int done;


        rssl->pendingWrite = 0;
        rv = redisBufferWrite(c, &done);
        if (rv == REDIS_ERR) {
            __redisAsyncDisconnect(ac);
            return;
        } else if (!done) {
            _EL_ADD_WRITE(ac);
        }
    }

    rv = redisBufferRead(c);
    if (rv == REDIS_ERR) {
        __redisAsyncDisconnect(ac);
    } else {
        _EL_ADD_READ(ac);
        redisProcessCallbacks(ac);
    }
}
