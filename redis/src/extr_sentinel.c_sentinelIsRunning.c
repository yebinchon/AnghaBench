
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* myid; } ;
struct TYPE_3__ {int * configfile; } ;


 int CONFIG_RUN_ID_SIZE ;
 int LL_WARNING ;
 int W_OK ;
 int access (int *,int ) ;
 int errno ;
 int exit (int) ;
 int getRandomHexChars (scalar_t__*,int) ;
 TYPE_2__ sentinel ;
 int sentinelFlushConfig () ;
 int sentinelGenerateInitialMonitorEvents () ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int strerror (int ) ;

void sentinelIsRunning(void) {
    int j;

    if (server.configfile == ((void*)0)) {
        serverLog(LL_WARNING,
            "Sentinel started without a config file. Exiting...");
        exit(1);
    } else if (access(server.configfile,W_OK) == -1) {
        serverLog(LL_WARNING,
            "Sentinel config file %s is not writable: %s. Exiting...",
            server.configfile,strerror(errno));
        exit(1);
    }




    for (j = 0; j < CONFIG_RUN_ID_SIZE; j++)
        if (sentinel.myid[j] != 0) break;

    if (j == CONFIG_RUN_ID_SIZE) {

        getRandomHexChars(sentinel.myid,CONFIG_RUN_ID_SIZE);
        sentinelFlushConfig();
    }


    serverLog(LL_WARNING,"Sentinel ID is %s", sentinel.myid);



    sentinelGenerateInitialMonitorEvents();
}
