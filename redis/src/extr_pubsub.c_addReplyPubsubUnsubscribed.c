
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int robj ;
struct TYPE_10__ {int resp; } ;
typedef TYPE_1__ client ;
struct TYPE_11__ {int unsubscribebulk; int * mbulkhdr; } ;


 int addReply (TYPE_1__*,int ) ;
 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyLongLong (TYPE_1__*,int ) ;
 int addReplyNull (TYPE_1__*) ;
 int addReplyPushLen (TYPE_1__*,int) ;
 int clientSubscriptionsCount (TYPE_1__*) ;
 TYPE_2__ shared ;

void addReplyPubsubUnsubscribed(client *c, robj *channel) {
    if (c->resp == 2)
        addReply(c,shared.mbulkhdr[3]);
    else
        addReplyPushLen(c,3);
    addReply(c,shared.unsubscribebulk);
    if (channel)
        addReplyBulk(c,channel);
    else
        addReplyNull(c);
    addReplyLongLong(c,clientSubscriptionsCount(c));
}
