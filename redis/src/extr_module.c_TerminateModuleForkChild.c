
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * done_handler_user_data; int * done_handler; } ;
struct TYPE_3__ {int module_child_pid; } ;


 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int SIGUSR1 ;
 int closeChildInfoPipe () ;
 int kill (int,int ) ;
 TYPE_2__ moduleForkInfo ;
 TYPE_1__ server ;
 int serverLog (int ,char*,long) ;
 int updateDictResizePolicy () ;
 int wait4 (int,int*,int ,int *) ;

int TerminateModuleForkChild(int child_pid, int wait) {

    if (server.module_child_pid == -1 ||
        server.module_child_pid != child_pid) return C_ERR;

    int statloc;
    serverLog(LL_NOTICE,"Killing running module fork child: %ld",
        (long) server.module_child_pid);
    if (kill(server.module_child_pid,SIGUSR1) != -1 && wait) {
        while(wait4(server.module_child_pid,&statloc,0,((void*)0)) !=
              server.module_child_pid);
    }

    server.module_child_pid = -1;
    moduleForkInfo.done_handler = ((void*)0);
    moduleForkInfo.done_handler_user_data = ((void*)0);
    closeChildInfoPipe();
    updateDictResizePolicy();
    return C_OK;
}
