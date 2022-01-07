
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
struct TYPE_7__ {int resp; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int pmessagebulk; int * mbulkhdr; } ;


 int addReply (TYPE_1__*,int ) ;
 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyPushLen (TYPE_1__*,int) ;
 TYPE_2__ shared ;

void addReplyPubsubPatMessage(client *c, robj *pat, robj *channel, robj *msg) {
    if (c->resp == 2)
        addReply(c,shared.mbulkhdr[4]);
    else
        addReplyPushLen(c,4);
    addReply(c,shared.pmessagebulk);
    addReplyBulk(c,pat);
    addReplyBulk(c,channel);
    addReplyBulk(c,msg);
}
