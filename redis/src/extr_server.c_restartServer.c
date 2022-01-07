
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_2__ {int * exec_argv; int executable; scalar_t__ maxclients; scalar_t__ configfile; } ;


 int C_ERR ;
 scalar_t__ C_OK ;
 int F_GETFD ;
 int LL_WARNING ;
 int RESTART_SERVER_CONFIG_REWRITE ;
 int RESTART_SERVER_GRACEFULLY ;
 int SHUTDOWN_NOFLAGS ;
 int X_OK ;
 int _exit (int) ;
 int access (int ,int ) ;
 int close (int) ;
 int environ ;
 int execve (int ,int *,int ) ;
 int fcntl (int,int ) ;
 scalar_t__ prepareForShutdown (int ) ;
 int rewriteConfig (scalar_t__) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int usleep (int) ;
 int zfree (int ) ;
 int zstrdup (int ) ;

int restartServer(int flags, mstime_t delay) {
    int j;



    if (access(server.executable,X_OK) == -1) {
        serverLog(LL_WARNING,"Can't restart: this process has no "
                             "permissions to execute %s", server.executable);
        return C_ERR;
    }


    if (flags & RESTART_SERVER_CONFIG_REWRITE &&
        server.configfile &&
        rewriteConfig(server.configfile) == -1)
    {
        serverLog(LL_WARNING,"Can't restart: configuration rewrite process "
                             "failed");
        return C_ERR;
    }


    if (flags & RESTART_SERVER_GRACEFULLY &&
        prepareForShutdown(SHUTDOWN_NOFLAGS) != C_OK)
    {
        serverLog(LL_WARNING,"Can't restart: error preparing for shutdown");
        return C_ERR;
    }



    for (j = 3; j < (int)server.maxclients + 1024; j++) {


        if (fcntl(j,F_GETFD) != -1) close(j);
    }


    if (delay) usleep(delay*1000);
    zfree(server.exec_argv[0]);
    server.exec_argv[0] = zstrdup(server.executable);
    execve(server.executable,server.exec_argv,environ);


    _exit(1);

    return C_ERR;
}
