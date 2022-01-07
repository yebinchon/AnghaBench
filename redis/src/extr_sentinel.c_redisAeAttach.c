
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fd; } ;
typedef TYPE_2__ redisContext ;
struct TYPE_6__ {TYPE_4__* data; int cleanup; int delWrite; int addWrite; int delRead; int addRead; } ;
struct TYPE_8__ {TYPE_1__ ev; TYPE_2__ c; } ;
typedef TYPE_3__ redisAsyncContext ;
struct TYPE_9__ {scalar_t__ writing; scalar_t__ reading; int fd; int * loop; TYPE_3__* context; } ;
typedef TYPE_4__ redisAeEvents ;
typedef int aeEventLoop ;


 int C_ERR ;
 int C_OK ;
 int redisAeAddRead ;
 int redisAeAddWrite ;
 int redisAeCleanup ;
 int redisAeDelRead ;
 int redisAeDelWrite ;
 scalar_t__ zmalloc (int) ;

__attribute__((used)) static int redisAeAttach(aeEventLoop *loop, redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    redisAeEvents *e;


    if (ac->ev.data != ((void*)0))
        return C_ERR;


    e = (redisAeEvents*)zmalloc(sizeof(*e));
    e->context = ac;
    e->loop = loop;
    e->fd = c->fd;
    e->reading = e->writing = 0;


    ac->ev.addRead = redisAeAddRead;
    ac->ev.delRead = redisAeDelRead;
    ac->ev.addWrite = redisAeAddWrite;
    ac->ev.delWrite = redisAeDelWrite;
    ac->ev.cleanup = redisAeCleanup;
    ac->ev.data = e;

    return C_OK;
}
