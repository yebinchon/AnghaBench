
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
typedef TYPE_1__ redisAsyncContext ;
struct TYPE_7__ {int disconnected; TYPE_1__* pc; scalar_t__ pending_commands; TYPE_1__* cc; } ;
typedef TYPE_2__ instanceLink ;


 int redisAsyncFree (TYPE_1__*) ;

void instanceLinkCloseConnection(instanceLink *link, redisAsyncContext *c) {
    if (c == ((void*)0)) return;

    if (link->cc == c) {
        link->cc = ((void*)0);
        link->pending_commands = 0;
    }
    if (link->pc == c) link->pc = ((void*)0);
    c->data = ((void*)0);
    link->disconnected = 1;
    redisAsyncFree(c);
}
