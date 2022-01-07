
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {int masterport; int * masterhost; scalar_t__ cluster_enabled; } ;


 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char*) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatprintf (int ,char*,char*,int *,int ) ;
 int sdsempty () ;
 TYPE_1__ server ;

void rewriteConfigSlaveofOption(struct rewriteConfigState *state, char *option) {
    sds line;




    if (server.cluster_enabled || server.masterhost == ((void*)0)) {
        rewriteConfigMarkAsProcessed(state,option);
        return;
    }
    line = sdscatprintf(sdsempty(),"%s %s %d", option,
        server.masterhost, server.masterport);
    rewriteConfigRewriteLine(state,option,line,1);
}
