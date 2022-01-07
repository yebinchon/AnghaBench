
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int ok; } ;


 int CLIENT_MULTI ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int discardTransaction (TYPE_1__*) ;
 TYPE_2__ shared ;

void discardCommand(client *c) {
    if (!(c->flags & CLIENT_MULTI)) {
        addReplyError(c,"DISCARD without MULTI");
        return;
    }
    discardTransaction(c);
    addReply(c,shared.ok);
}
