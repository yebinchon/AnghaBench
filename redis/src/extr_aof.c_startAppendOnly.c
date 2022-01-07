
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aof_state; int aof_child_pid; int aof_rewrite_scheduled; int aof_fd; int unixtime; int aof_last_fsync; int aof_filename; } ;


 scalar_t__ AOF_OFF ;
 scalar_t__ AOF_WAIT_REWRITE ;
 int C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int MAXPATHLEN ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 char* getcwd (char*,int) ;
 scalar_t__ hasActiveChildProcess () ;
 int killAppendOnlyChild () ;
 int open (int ,int,int) ;
 int rewriteAppendOnlyFileBackground () ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,...) ;
 int strerror (int ) ;

int startAppendOnly(void) {
    char cwd[MAXPATHLEN];
    int newfd;

    newfd = open(server.aof_filename,O_WRONLY|O_APPEND|O_CREAT,0644);
    serverAssert(server.aof_state == AOF_OFF);
    if (newfd == -1) {
        char *cwdp = getcwd(cwd,MAXPATHLEN);

        serverLog(LL_WARNING,
            "Redis needs to enable the AOF but can't open the "
            "append only file %s (in server root dir %s): %s",
            server.aof_filename,
            cwdp ? cwdp : "unknown",
            strerror(errno));
        return C_ERR;
    }
    if (hasActiveChildProcess() && server.aof_child_pid == -1) {
        server.aof_rewrite_scheduled = 1;
        serverLog(LL_WARNING,"AOF was enabled but there is already another background operation. An AOF background was scheduled to start when possible.");
    } else {



        if (server.aof_child_pid != -1) {
            serverLog(LL_WARNING,"AOF was enabled but there is already an AOF rewriting in background. Stopping background AOF and starting a rewrite now.");
            killAppendOnlyChild();
        }
        if (rewriteAppendOnlyFileBackground() == C_ERR) {
            close(newfd);
            serverLog(LL_WARNING,"Redis needs to enable the AOF but can't trigger a background AOF rewrite operation. Check the above logs for more info about the error.");
            return C_ERR;
        }
    }


    server.aof_state = AOF_WAIT_REWRITE;
    server.aof_last_fsync = server.unixtime;
    server.aof_fd = newfd;
    return C_OK;
}
