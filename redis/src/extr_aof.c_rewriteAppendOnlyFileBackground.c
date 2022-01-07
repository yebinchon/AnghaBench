
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {int aof_child_pid; int aof_selected_db; int aof_rewrite_time_start; scalar_t__ aof_rewrite_scheduled; } ;


 int CHILD_INFO_TYPE_AOF ;
 int C_ERR ;
 scalar_t__ C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int aofClosePipes () ;
 scalar_t__ aofCreatePipes () ;
 int closeChildInfoPipe () ;
 int errno ;
 int exitFromChild (int) ;
 scalar_t__ getpid () ;
 scalar_t__ hasActiveChildProcess () ;
 int openChildInfoPipe () ;
 int redisFork () ;
 int redisSetProcTitle (char*) ;
 int replicationScriptCacheFlush () ;
 scalar_t__ rewriteAppendOnlyFile (char*) ;
 int sendChildCOWInfo (int ,char*) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strerror (int ) ;
 int time (int *) ;

int rewriteAppendOnlyFileBackground(void) {
    pid_t childpid;

    if (hasActiveChildProcess()) return C_ERR;
    if (aofCreatePipes() != C_OK) return C_ERR;
    openChildInfoPipe();
    if ((childpid = redisFork()) == 0) {
        char tmpfile[256];


        redisSetProcTitle("redis-aof-rewrite");
        snprintf(tmpfile,256,"temp-rewriteaof-bg-%d.aof", (int) getpid());
        if (rewriteAppendOnlyFile(tmpfile) == C_OK) {
            sendChildCOWInfo(CHILD_INFO_TYPE_AOF, "AOF rewrite");
            exitFromChild(0);
        } else {
            exitFromChild(1);
        }
    } else {

        if (childpid == -1) {
            closeChildInfoPipe();
            serverLog(LL_WARNING,
                "Can't rewrite append only file in background: fork: %s",
                strerror(errno));
            aofClosePipes();
            return C_ERR;
        }
        serverLog(LL_NOTICE,
            "Background append only file rewriting started by pid %d",childpid);
        server.aof_rewrite_scheduled = 0;
        server.aof_rewrite_time_start = time(((void*)0));
        server.aof_child_pid = childpid;




        server.aof_selected_db = -1;
        replicationScriptCacheFlush();
        return C_OK;
    }
    return C_OK;
}
