
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tv ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {struct timeval* timeout; } ;
struct TYPE_5__ {TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;


 struct timeval* calloc (int,int) ;

void redisAsyncSetTimeout(redisAsyncContext *ac, struct timeval tv) {
    if (!ac->c.timeout) {
        ac->c.timeout = calloc(1, sizeof(tv));
    }

    if (tv.tv_sec == ac->c.timeout->tv_sec &&
        tv.tv_usec == ac->c.timeout->tv_usec) {
        return;
    }

    *ac->c.timeout = tv;
}
