
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int dummy; } ;
typedef int cwd ;


 int * getcwd (char*,int) ;
 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char*) ;
 int rewriteConfigStringOption (struct rewriteConfigState*,char*,char*,int *) ;

void rewriteConfigDirOption(struct rewriteConfigState *state) {
    char cwd[1024];

    if (getcwd(cwd,sizeof(cwd)) == ((void*)0)) {
        rewriteConfigMarkAsProcessed(state,"dir");
        return;
    }
    rewriteConfigStringOption(state,"dir",cwd,((void*)0));
}
