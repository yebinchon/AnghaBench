
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {int noscripterr; } ;
struct TYPE_8__ {int ptr; } ;


 int CLIENT_LUA_DEBUG ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int evalGenericCommand (TYPE_2__*,int) ;
 int sdslen (int ) ;
 TYPE_3__ shared ;

void evalShaCommand(client *c) {
    if (sdslen(c->argv[1]->ptr) != 40) {




        addReply(c, shared.noscripterr);
        return;
    }
    if (!(c->flags & CLIENT_LUA_DEBUG))
        evalGenericCommand(c,1);
    else {
        addReplyError(c,"Please use EVAL instead of EVALSHA for debugging");
        return;
    }
}
