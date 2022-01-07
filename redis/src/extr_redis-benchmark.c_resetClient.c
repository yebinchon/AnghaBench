
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* client ;
typedef int aeEventLoop ;
struct TYPE_9__ {int pipeline; } ;
struct TYPE_8__ {int pending; scalar_t__ written; TYPE_1__* context; } ;
struct TYPE_7__ {int fd; } ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int * CLIENT_GET_EVENTLOOP (TYPE_2__*) ;
 int aeCreateFileEvent (int *,int ,int ,int ,TYPE_2__*) ;
 int aeDeleteFileEvent (int *,int ,int ) ;
 TYPE_4__ config ;
 int writeHandler ;

__attribute__((used)) static void resetClient(client c) {
    aeEventLoop *el = CLIENT_GET_EVENTLOOP(c);
    aeDeleteFileEvent(el,c->context->fd,AE_WRITABLE);
    aeDeleteFileEvent(el,c->context->fd,AE_READABLE);
    aeCreateFileEvent(el,c->context->fd,AE_WRITABLE,writeHandler,c);
    c->written = 0;
    c->pending = config.pipeline;
}
