
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {scalar_t__ notify_keyspace_events; } ;


 int keyspaceEventsFlagsToString (scalar_t__) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatrepr (int ,int ,int ) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int sdsnew (char*) ;
 TYPE_1__ server ;

void rewriteConfigNotifykeyspaceeventsOption(struct rewriteConfigState *state) {
    int force = server.notify_keyspace_events != 0;
    char *option = "notify-keyspace-events";
    sds line, flags;

    flags = keyspaceEventsFlagsToString(server.notify_keyspace_events);
    line = sdsnew(option);
    line = sdscatlen(line, " ", 1);
    line = sdscatrepr(line, flags, sdslen(flags));
    sdsfree(flags);
    rewriteConfigRewriteLine(state,option,line,force);
}
