
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ redisAsyncContext ;
struct TYPE_5__ {int disconnected; int * cc; TYPE_1__ const* pc; } ;
typedef TYPE_2__ instanceLink ;



void instanceLinkConnectionError(const redisAsyncContext *c) {
    instanceLink *link = c->data;
    int pubsub;

    if (!link) return;

    pubsub = (link->pc == c);
    if (pubsub)
        link->pc = ((void*)0);
    else
        link->cc = ((void*)0);
    link->disconnected = 1;
}
