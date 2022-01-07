
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int redisOptions ;
struct TYPE_5__ {int * reader; int * obuf; int fd; int * funcs; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_INVALID_FD ;
 TYPE_1__* calloc (int,int) ;
 int redisContextDefaultFuncs ;
 int redisFree (TYPE_1__*) ;
 int * redisReaderCreate () ;
 int * sdsempty () ;

__attribute__((used)) static redisContext *redisContextInit(const redisOptions *options) {
    redisContext *c;

    c = calloc(1, sizeof(*c));
    if (c == ((void*)0))
        return ((void*)0);

    c->funcs = &redisContextDefaultFuncs;
    c->obuf = sdsempty();
    c->reader = redisReaderCreate();
    c->fd = REDIS_INVALID_FD;

    if (c->obuf == ((void*)0) || c->reader == ((void*)0)) {
        redisFree(c);
        return ((void*)0);
    }
    (void)options;
    return c;
}
