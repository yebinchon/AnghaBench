
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown_asap; scalar_t__ loading; } ;


 int LL_WARNING ;


 int exit (int) ;
 int getpid () ;
 int rdbRemoveTempFile (int ) ;
 TYPE_1__ server ;
 int serverLogFromHandler (int ,char*) ;

__attribute__((used)) static void sigShutdownHandler(int sig) {
    char *msg;

    switch (sig) {
    case 129:
        msg = "Received SIGINT scheduling shutdown...";
        break;
    case 128:
        msg = "Received SIGTERM scheduling shutdown...";
        break;
    default:
        msg = "Received shutdown signal, scheduling shutdown...";
    };





    if (server.shutdown_asap && sig == 129) {
        serverLogFromHandler(LL_WARNING, "You insist... exiting now.");
        rdbRemoveTempFile(getpid());
        exit(1);
    } else if (server.loading) {
        serverLogFromHandler(LL_WARNING, "Received shutdown signal during loading, exiting now.");
        exit(0);
    }

    serverLogFromHandler(LL_WARNING, msg);
    server.shutdown_asap = 1;
}
