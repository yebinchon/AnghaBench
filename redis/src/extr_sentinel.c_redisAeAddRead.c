
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reading; int fd; int * loop; } ;
typedef TYPE_1__ redisAeEvents ;
typedef int aeEventLoop ;


 int AE_READABLE ;
 int aeCreateFileEvent (int *,int ,int ,int ,TYPE_1__*) ;
 int redisAeReadEvent ;

__attribute__((used)) static void redisAeAddRead(void *privdata) {
    redisAeEvents *e = (redisAeEvents*)privdata;
    aeEventLoop *loop = e->loop;
    if (!e->reading) {
        e->reading = 1;
        aeCreateFileEvent(loop,e->fd,AE_READABLE,redisAeReadEvent,e);
    }
}
