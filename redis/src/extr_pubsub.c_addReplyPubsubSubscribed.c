
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {int resp; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int subscribebulk; int * mbulkhdr; } ;


 int addReply (TYPE_1__*,int ) ;
 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyLongLong (TYPE_1__*,int ) ;
 int addReplyPushLen (TYPE_1__*,int) ;
 int clientSubscriptionsCount (TYPE_1__*) ;
 TYPE_2__ shared ;

void addReplyPubsubSubscribed(client *c, robj *channel) {
    if (c->resp == 2)
        addReply(c,shared.mbulkhdr[3]);
    else
        addReplyPushLen(c,3);
    addReply(c,shared.subscribebulk);
    addReplyBulk(c,channel);
    addReplyLongLong(c,clientSubscriptionsCount(c));
}
