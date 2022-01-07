
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ loading_process_events_interval_bytes; } ;
struct TYPE_3__ {int ** integers; } ;
typedef int FILE ;


 int C_ERR ;
 int C_OK ;
 int createSharedObjects () ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int rdbCheckInfo (char*,...) ;
 int rdbCheckMode ;
 int rdbCheckSetupSignals () ;
 int rdbShowGenericInfo () ;
 int redis_check_rdb (char*,int *) ;
 TYPE_2__ server ;
 TYPE_1__ shared ;
 int stderr ;

int redis_check_rdb_main(int argc, char **argv, FILE *fp) {
    if (argc != 2 && fp == ((void*)0)) {
        fprintf(stderr, "Usage: %s <rdb-file-name>\n", argv[0]);
        exit(1);
    }



    if (shared.integers[0] == ((void*)0))
        createSharedObjects();
    server.loading_process_events_interval_bytes = 0;
    rdbCheckMode = 1;
    rdbCheckInfo("Checking RDB file %s", argv[1]);
    rdbCheckSetupSignals();
    int retval = redis_check_rdb(argv[1],fp);
    if (retval == 0) {
        rdbCheckInfo("\\o/ RDB looks OK! \\o/");
        rdbShowGenericInfo();
    }
    if (fp) return (retval == 0) ? C_OK : C_ERR;
    exit(retval);
}
