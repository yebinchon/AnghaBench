
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_4__ {void* done_handler_user_data; int done_handler; } ;
struct TYPE_3__ {int module_child_pid; } ;
typedef int RedisModuleForkDoneHandler ;


 int LL_NOTICE ;
 int LL_WARNING ;
 int closeChildInfoPipe () ;
 int errno ;
 scalar_t__ hasActiveChildProcess () ;
 TYPE_2__ moduleForkInfo ;
 int openChildInfoPipe () ;
 int redisFork () ;
 int redisSetProcTitle (char*) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int) ;
 int strerror (int ) ;

int RM_Fork(RedisModuleForkDoneHandler cb, void *user_data) {
    pid_t childpid;
    if (hasActiveChildProcess()) {
        return -1;
    }

    openChildInfoPipe();
    if ((childpid = redisFork()) == 0) {

        redisSetProcTitle("redis-module-fork");
    } else if (childpid == -1) {
        closeChildInfoPipe();
        serverLog(LL_WARNING,"Can't fork for module: %s", strerror(errno));
    } else {

        server.module_child_pid = childpid;
        moduleForkInfo.done_handler = cb;
        moduleForkInfo.done_handler_user_data = user_data;
        serverLog(LL_NOTICE, "Module fork started pid: %d ", childpid);
    }
    return childpid;
}
