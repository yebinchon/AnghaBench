
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ client ;


 int CLIENT_MASTER ;
 int CLIENT_MONITOR ;
 int CLIENT_PUBSUB ;
 int CLIENT_SLAVE ;
 int CLIENT_TYPE_MASTER ;
 int CLIENT_TYPE_NORMAL ;
 int CLIENT_TYPE_PUBSUB ;
 int CLIENT_TYPE_SLAVE ;

int getClientType(client *c) {
    if (c->flags & CLIENT_MASTER) return CLIENT_TYPE_MASTER;
    if ((c->flags & CLIENT_SLAVE) && !(c->flags & CLIENT_MONITOR))
        return CLIENT_TYPE_SLAVE;
    if (c->flags & CLIENT_PUBSUB) return CLIENT_TYPE_PUBSUB;
    return CLIENT_TYPE_NORMAL;
}
