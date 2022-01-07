
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int redisReplyObjectFunctions ;
struct TYPE_5__ {int ridx; int * buf; int maxbuf; int * fn; } ;
typedef TYPE_1__ redisReader ;


 int REDIS_READER_MAX_BUF ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int * sdsempty () ;

redisReader *redisReaderCreateWithFunctions(redisReplyObjectFunctions *fn) {
    redisReader *r;

    r = calloc(1,sizeof(redisReader));
    if (r == ((void*)0))
        return ((void*)0);

    r->fn = fn;
    r->buf = sdsempty();
    r->maxbuf = REDIS_READER_MAX_BUF;
    if (r->buf == ((void*)0)) {
        free(r);
        return ((void*)0);
    }

    r->ridx = -1;
    return r;
}
