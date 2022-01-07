
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sds ;
struct TYPE_9__ {TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_8__ {scalar_t__ ptr; } ;


 void* addReplyDeferredLen (TYPE_2__*) ;
 int addReplyStatus (TYPE_2__*,char const*) ;
 int addReplyStatusFormat (TYPE_2__*,char*,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 int sdstoupper (int ) ;
 int setDeferredArrayLen (TYPE_2__*,void*,int) ;

void addReplyHelp(client *c, const char **help) {
    sds cmd = sdsnew((char*) c->argv[0]->ptr);
    void *blenp = addReplyDeferredLen(c);
    int blen = 0;

    sdstoupper(cmd);
    addReplyStatusFormat(c,
        "%s <subcommand> arg arg ... arg. Subcommands are:",cmd);
    sdsfree(cmd);

    while (help[blen]) addReplyStatus(c,help[blen++]);

    blen++;
    setDeferredArrayLen(c,blenp,blen);
}
