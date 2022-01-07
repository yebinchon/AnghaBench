
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long pid_t ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_5__ {int children; } ;


 int LL_WARNING ;
 int SIGKILL ;
 int kill (unsigned long,int ) ;
 TYPE_3__ ldb ;
 int listCreate () ;
 TYPE_1__* listNext (int *) ;
 int listRelease (int ) ;
 int listRewind (int ,int *) ;
 int serverLog (int ,char*,long) ;

void ldbKillForkedSessions(void) {
    listIter li;
    listNode *ln;

    listRewind(ldb.children,&li);
    while((ln = listNext(&li))) {
        pid_t pid = (unsigned long) ln->value;
        serverLog(LL_WARNING,"Killing debugging session %ld",(long)pid);
        kill(pid,SIGKILL);
    }
    listRelease(ldb.children);
    ldb.children = listCreate();
}
