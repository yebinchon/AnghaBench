
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aof_child_pid; int aof_rewrite_time_start; } ;


 int LL_NOTICE ;
 int SIGUSR1 ;
 int aofClosePipes () ;
 int aofRemoveTempFile (int) ;
 int aofRewriteBufferReset () ;
 int closeChildInfoPipe () ;
 int kill (int,int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,long) ;
 int updateDictResizePolicy () ;
 int wait3 (int*,int ,int *) ;

void killAppendOnlyChild(void) {
    int statloc;

    if (server.aof_child_pid == -1) return;

    serverLog(LL_NOTICE,"Killing running AOF rewrite child: %ld",
        (long) server.aof_child_pid);
    if (kill(server.aof_child_pid,SIGUSR1) != -1) {
        while(wait3(&statloc,0,((void*)0)) != server.aof_child_pid);
    }

    aofRewriteBufferReset();
    aofRemoveTempFile(server.aof_child_pid);
    server.aof_child_pid = -1;
    server.aof_rewrite_time_start = -1;

    aofClosePipes();
    closeChildInfoPipe();
    updateDictResizePolicy();
}
