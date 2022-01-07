
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int dummy; } ;
typedef int * sds ;


 int * ACLDefaultUserFirstPassword () ;
 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char*) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,int *,int) ;
 int * sdscatlen (int *,char*,int) ;
 int * sdscatsds (int *,int *) ;
 int * sdsnew (char*) ;

void rewriteConfigRequirepassOption(struct rewriteConfigState *state, char *option) {
    int force = 1;
    sds line;
    sds password = ACLDefaultUserFirstPassword();



    if (password == ((void*)0)) {
        rewriteConfigMarkAsProcessed(state,option);
        return;
    }

    line = sdsnew(option);
    line = sdscatlen(line, " ", 1);
    line = sdscatsds(line, password);

    rewriteConfigRewriteLine(state,option,line,force);
}
