
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; scalar_t__ writing; int * loop; } ;
typedef TYPE_1__ redisAeEvents ;
typedef int aeEventLoop ;


 int AE_WRITABLE ;
 int aeDeleteFileEvent (int *,int ,int ) ;

__attribute__((used)) static void redisAeDelWrite(void *privdata) {
    redisAeEvents *e = (redisAeEvents*)privdata;
    aeEventLoop *loop = e->loop;
    if (e->writing) {
        e->writing = 0;
        aeDeleteFileEvent(loop,e->fd,AE_WRITABLE);
    }
}
