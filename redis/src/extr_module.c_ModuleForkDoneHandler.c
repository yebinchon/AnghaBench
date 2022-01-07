
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * done_handler_user_data; int (* done_handler ) (int,int,int *) ;} ;
struct TYPE_3__ {int module_child_pid; } ;


 int LL_NOTICE ;
 TYPE_2__ moduleForkInfo ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int,int,int) ;
 int stub1 (int,int,int *) ;

void ModuleForkDoneHandler(int exitcode, int bysignal) {
    serverLog(LL_NOTICE,
        "Module fork exited pid: %d, retcode: %d, bysignal: %d",
        server.module_child_pid, exitcode, bysignal);
    if (moduleForkInfo.done_handler) {
        moduleForkInfo.done_handler(exitcode, bysignal,
            moduleForkInfo.done_handler_user_data);
    }
    server.module_child_pid = -1;
    moduleForkInfo.done_handler = ((void*)0);
    moduleForkInfo.done_handler_user_data = ((void*)0);
}
