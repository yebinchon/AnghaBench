
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int pendingWrite; scalar_t__ wantRead; } ;
typedef TYPE_1__ redisSSLContext ;
struct TYPE_11__ {TYPE_1__* privdata; } ;
typedef TYPE_2__ redisContext ;
struct TYPE_12__ {TYPE_2__ c; } ;
typedef TYPE_3__ redisAsyncContext ;


 int REDIS_ERR ;
 int _EL_ADD_READ (TYPE_3__*) ;
 int _EL_ADD_WRITE (TYPE_3__*) ;
 int _EL_DEL_WRITE (TYPE_3__*) ;
 int __redisAsyncDisconnect (TYPE_3__*) ;
 int redisBufferWrite (TYPE_2__*,int*) ;

__attribute__((used)) static void redisSSLAsyncWrite(redisAsyncContext *ac) {
    int rv, done = 0;
    redisSSLContext *rssl = ac->c.privdata;
    redisContext *c = &ac->c;

    rssl->pendingWrite = 0;
    rv = redisBufferWrite(c, &done);
    if (rv == REDIS_ERR) {
        __redisAsyncDisconnect(ac);
        return;
    }

    if (!done) {
        if (rssl->wantRead) {

            rssl->pendingWrite = 1;
            _EL_DEL_WRITE(ac);
        } else {

            _EL_ADD_WRITE(ac);
        }
    } else {

        _EL_DEL_WRITE(ac);
    }


    _EL_ADD_READ(ac);
}
