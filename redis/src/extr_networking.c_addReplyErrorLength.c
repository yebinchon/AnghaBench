
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* lastcmd; } ;
typedef TYPE_2__ client ;
struct TYPE_5__ {char* name; } ;


 int CLIENT_MASTER ;
 int CLIENT_MONITOR ;
 int CLIENT_SLAVE ;
 int LL_WARNING ;
 int addReplyProto (TYPE_2__*,char const*,int) ;
 int serverLog (int ,char*,char*,char*,char const*,char*) ;

void addReplyErrorLength(client *c, const char *s, size_t len) {


    if (!len || s[0] != '-') addReplyProto(c,"-ERR ",5);
    addReplyProto(c,s,len);
    addReplyProto(c,"\r\n",2);
    if (c->flags & (CLIENT_MASTER|CLIENT_SLAVE) && !(c->flags & CLIENT_MONITOR)) {
        char* to = c->flags & CLIENT_MASTER? "master": "replica";
        char* from = c->flags & CLIENT_MASTER? "replica": "master";
        char *cmdname = c->lastcmd ? c->lastcmd->name : "<unknown>";
        serverLog(LL_WARNING,"== CRITICAL == This %s is sending an error "
                             "to its %s: '%s' after processing the command "
                             "'%s'", from, to, s, cmdname);
    }
}
