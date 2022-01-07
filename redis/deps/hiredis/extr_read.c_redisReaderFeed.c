
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ maxbuf; int * buf; scalar_t__ pos; scalar_t__ err; } ;
typedef TYPE_1__ redisReader ;


 int REDIS_ERR ;
 int REDIS_OK ;
 int __redisReaderSetErrorOOM (TYPE_1__*) ;
 int assert (int ) ;
 scalar_t__ sdsavail (int *) ;
 int * sdscatlen (int *,char const*,size_t) ;
 int * sdsempty () ;
 int sdsfree (int *) ;
 scalar_t__ sdslen (int *) ;

int redisReaderFeed(redisReader *r, const char *buf, size_t len) {
    sds newbuf;


    if (r->err)
        return REDIS_ERR;


    if (buf != ((void*)0) && len >= 1) {

        if (r->len == 0 && r->maxbuf != 0 && sdsavail(r->buf) > r->maxbuf) {
            sdsfree(r->buf);
            r->buf = sdsempty();
            r->pos = 0;


            assert(r->buf != ((void*)0));
        }

        newbuf = sdscatlen(r->buf,buf,len);
        if (newbuf == ((void*)0)) {
            __redisReaderSetErrorOOM(r);
            return REDIS_ERR;
        }

        r->buf = newbuf;
        r->len = sdslen(r->buf);
    }

    return REDIS_OK;
}
