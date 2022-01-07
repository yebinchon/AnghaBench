
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t lastLen; int ssl; } ;
typedef TYPE_1__ redisSSLContext ;
struct TYPE_7__ {int flags; int obuf; TYPE_1__* privdata; } ;
typedef TYPE_2__ redisContext ;


 int REDIS_BLOCK ;
 int REDIS_ERR_IO ;
 int SSL_get_error (int ,int) ;
 int SSL_write (int ,int ,size_t) ;
 int __redisSetError (TYPE_2__*,int ,int *) ;
 scalar_t__ maybeCheckWant (TYPE_1__*,int) ;
 size_t sdslen (int ) ;

__attribute__((used)) static int redisSSLWrite(redisContext *c) {
    redisSSLContext *rssl = c->privdata;

    size_t len = rssl->lastLen ? rssl->lastLen : sdslen(c->obuf);
    int rv = SSL_write(rssl->ssl, c->obuf, len);

    if (rv > 0) {
        rssl->lastLen = 0;
    } else if (rv < 0) {
        rssl->lastLen = len;

        int err = SSL_get_error(rssl->ssl, rv);
        if ((c->flags & REDIS_BLOCK) == 0 && maybeCheckWant(rssl, err)) {
            return 0;
        } else {
            __redisSetError(c, REDIS_ERR_IO, ((void*)0));
            return -1;
        }
    }
    return rv;
}
