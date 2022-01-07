
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct redisCommand {int flags; } ;
typedef int client ;
struct TYPE_2__ {int flag; int name; } ;


 TYPE_1__* ACLCommandCategories ;
 void* addReplyDeferredLen (int *) ;
 int addReplyStatusFormat (int *,char*,int ) ;
 int setDeferredSetLen (int *,void*,int) ;

void addReplyCommandCategories(client *c, struct redisCommand *cmd) {
    int flagcount = 0;
    void *flaglen = addReplyDeferredLen(c);
    for (int j = 0; ACLCommandCategories[j].flag != 0; j++) {
        if (cmd->flags & ACLCommandCategories[j].flag) {
            addReplyStatusFormat(c, "@%s", ACLCommandCategories[j].name);
            flagcount++;
        }
    }
    setDeferredSetLen(c, flaglen, flagcount);
}
