
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {scalar_t__ bindaddr_count; int bindaddr; } ;


 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char*) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatsds (int ,int ) ;
 int sdsfree (int ) ;
 int sdsjoin (int ,scalar_t__,char*) ;
 int sdsnew (char*) ;
 TYPE_1__ server ;

void rewriteConfigBindOption(struct rewriteConfigState *state) {
    int force = 1;
    sds line, addresses;
    char *option = "bind";


    if (server.bindaddr_count == 0) {
        rewriteConfigMarkAsProcessed(state,option);
        return;
    }


    addresses = sdsjoin(server.bindaddr,server.bindaddr_count," ");
    line = sdsnew(option);
    line = sdscatlen(line, " ", 1);
    line = sdscatsds(line, addresses);
    sdsfree(addresses);

    rewriteConfigRewriteLine(state,option,line,force);
}
