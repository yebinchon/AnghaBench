
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int argc; int flags; int * argv; } ;
typedef TYPE_1__ client ;


 int CLIENT_PUBSUB ;
 scalar_t__ clientSubscriptionsCount (TYPE_1__*) ;
 int pubsubUnsubscribeAllChannels (TYPE_1__*,int) ;
 int pubsubUnsubscribeChannel (TYPE_1__*,int ,int) ;

void unsubscribeCommand(client *c) {
    if (c->argc == 1) {
        pubsubUnsubscribeAllChannels(c,1);
    } else {
        int j;

        for (j = 1; j < c->argc; j++)
            pubsubUnsubscribeChannel(c,c->argv[j],1);
    }
    if (clientSubscriptionsCount(c) == 0) c->flags &= ~CLIENT_PUBSUB;
}
