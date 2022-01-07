
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int ok; } ;


 scalar_t__ C_ERR ;
 int addReply (int *,int ) ;
 int flushAllDataAndResetRDB (int) ;
 scalar_t__ getFlushCommandFlags (int *,int*) ;
 TYPE_1__ shared ;

void flushallCommand(client *c) {
    int flags;
    if (getFlushCommandFlags(c,&flags) == C_ERR) return;
    flushAllDataAndResetRDB(flags);
    addReply(c,shared.ok);
}
