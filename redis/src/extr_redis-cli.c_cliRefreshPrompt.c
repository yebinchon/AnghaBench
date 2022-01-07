
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* sds ;
typedef int addr ;
struct TYPE_2__ {int prompt; int * dbnum; int hostport; int hostip; int * hostsocket; scalar_t__ eval_ldb; } ;


 int anetFormatAddr (char*,int,int ,int ) ;
 TYPE_1__ config ;
 char* sdscatfmt (char*,char*,int *) ;
 char* sdscatlen (char*,char*,int) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int snprintf (int ,int,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void cliRefreshPrompt(void) {
    if (config.eval_ldb) return;

    sds prompt = sdsempty();
    if (config.hostsocket != ((void*)0)) {
        prompt = sdscatfmt(prompt,"redis %s",config.hostsocket);
    } else {
        char addr[256];
        anetFormatAddr(addr, sizeof(addr), config.hostip, config.hostport);
        prompt = sdscatlen(prompt,addr,strlen(addr));
    }


    if (config.dbnum != 0)
        prompt = sdscatfmt(prompt,"[%i]",config.dbnum);


    prompt = sdscatlen(prompt,"> ",2);
    snprintf(config.prompt,sizeof(config.prompt),"%s",prompt);
    sdsfree(prompt);
}
