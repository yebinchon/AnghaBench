
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {int rdb_child_pid; int aof_child_pid; int module_child_pid; scalar_t__ rdb_pipe_conns; } ;


 int LL_WARNING ;
 int ModuleForkDoneHandler (int,int) ;
 int SERVER_CHILD_NOERROR_RETVAL ;
 int SIGUSR1 ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int backgroundRewriteDoneHandler (int,int) ;
 int backgroundSaveDoneHandler (int,int) ;
 int closeChildInfoPipe () ;
 int errno ;
 int ldbRemoveChild (int) ;
 int receiveChildInfo () ;
 TYPE_1__ server ;
 int serverLog (int ,char*,long,...) ;
 int strerror (int ) ;
 int updateDictResizePolicy () ;
 int wait3 (int*,int ,int *) ;

void checkChildrenDone(void) {
    int statloc;
    pid_t pid;






    if (server.rdb_child_pid != -1 && server.rdb_pipe_conns)
        return;

    if ((pid = wait3(&statloc,WNOHANG,((void*)0))) != 0) {
        int exitcode = WEXITSTATUS(statloc);
        int bysignal = 0;

        if (WIFSIGNALED(statloc)) bysignal = WTERMSIG(statloc);






        if (exitcode == SERVER_CHILD_NOERROR_RETVAL) {
            bysignal = SIGUSR1;
            exitcode = 1;
        }

        if (pid == -1) {
            serverLog(LL_WARNING,"wait3() returned an error: %s. "
                "rdb_child_pid = %d, aof_child_pid = %d, module_child_pid = %d",
                strerror(errno),
                (int) server.rdb_child_pid,
                (int) server.aof_child_pid,
                (int) server.module_child_pid);
        } else if (pid == server.rdb_child_pid) {
            backgroundSaveDoneHandler(exitcode,bysignal);
            if (!bysignal && exitcode == 0) receiveChildInfo();
        } else if (pid == server.aof_child_pid) {
            backgroundRewriteDoneHandler(exitcode,bysignal);
            if (!bysignal && exitcode == 0) receiveChildInfo();
        } else if (pid == server.module_child_pid) {
            ModuleForkDoneHandler(exitcode,bysignal);
            if (!bysignal && exitcode == 0) receiveChildInfo();
        } else {
            if (!ldbRemoveChild(pid)) {
                serverLog(LL_WARNING,
                    "Warning, detected child with unmatched pid: %ld",
                    (long)pid);
            }
        }
        updateDictResizePolicy();
        closeChildInfoPipe();
    }
}
