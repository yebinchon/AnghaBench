
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int resp; } ;
typedef TYPE_1__ client ;


 int setDeferredAggregateLen (TYPE_1__*,void*,long,int) ;

void setDeferredPushLen(client *c, void *node, long length) {
    int prefix = c->resp == 2 ? '*' : '>';
    setDeferredAggregateLen(c,node,length,prefix);
}
