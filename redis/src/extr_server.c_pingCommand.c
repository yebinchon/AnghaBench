
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int argc; int flags; int resp; int * argv; TYPE_1__* cmd; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {int pong; int * mbulkhdr; } ;
struct TYPE_9__ {int name; } ;


 int CLIENT_PUBSUB ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyBulk (TYPE_2__*,int ) ;
 int addReplyBulkCBuffer (TYPE_2__*,char*,int) ;
 int addReplyErrorFormat (TYPE_2__*,char*,int ) ;
 TYPE_3__ shared ;

void pingCommand(client *c) {

    if (c->argc > 2) {
        addReplyErrorFormat(c,"wrong number of arguments for '%s' command",
            c->cmd->name);
        return;
    }

    if (c->flags & CLIENT_PUBSUB && c->resp == 2) {
        addReply(c,shared.mbulkhdr[2]);
        addReplyBulkCBuffer(c,"pong",4);
        if (c->argc == 1)
            addReplyBulkCBuffer(c,"",0);
        else
            addReplyBulk(c,c->argv[1]);
    } else {
        if (c->argc == 1)
            addReply(c,shared.pong);
        else
            addReplyBulk(c,c->argv[1]);
    }
}
