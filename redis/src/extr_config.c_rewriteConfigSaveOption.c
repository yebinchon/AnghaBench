
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_4__ {int saveparamslen; TYPE_1__* saveparams; } ;
struct TYPE_3__ {int changes; scalar_t__ seconds; } ;


 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char*) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int ,int) ;
 int sdscatprintf (int ,char*,long,int ) ;
 int sdsempty () ;
 TYPE_2__ server ;

void rewriteConfigSaveOption(struct rewriteConfigState *state) {
    int j;
    sds line;




    for (j = 0; j < server.saveparamslen; j++) {
        line = sdscatprintf(sdsempty(),"save %ld %d",
            (long) server.saveparams[j].seconds, server.saveparams[j].changes);
        rewriteConfigRewriteLine(state,"save",line,1);
    }

    rewriteConfigMarkAsProcessed(state,"save");
}
