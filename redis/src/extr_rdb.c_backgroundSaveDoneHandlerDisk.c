
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_2__ {int rdb_child_pid; int rdb_save_time_start; void* rdb_save_time_last; int rdb_child_type; void* lastbgsave_status; void* lastsave; scalar_t__ dirty_before_bgsave; scalar_t__ dirty; } ;


 void* C_ERR ;
 void* C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int RDB_CHILD_TYPE_DISK ;
 int RDB_CHILD_TYPE_NONE ;
 int SIGUSR1 ;
 int latencyAddSampleIfNeeded (char*,int ) ;
 int latencyEndMonitor (int ) ;
 int latencyStartMonitor (int ) ;
 int rdbRemoveTempFile (int) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 void* time (int *) ;
 int updateSlavesWaitingBgsave (void*,int ) ;

void backgroundSaveDoneHandlerDisk(int exitcode, int bysignal) {
    if (!bysignal && exitcode == 0) {
        serverLog(LL_NOTICE,
            "Background saving terminated with success");
        server.dirty = server.dirty - server.dirty_before_bgsave;
        server.lastsave = time(((void*)0));
        server.lastbgsave_status = C_OK;
    } else if (!bysignal && exitcode != 0) {
        serverLog(LL_WARNING, "Background saving error");
        server.lastbgsave_status = C_ERR;
    } else {
        mstime_t latency;

        serverLog(LL_WARNING,
            "Background saving terminated by signal %d", bysignal);
        latencyStartMonitor(latency);
        rdbRemoveTempFile(server.rdb_child_pid);
        latencyEndMonitor(latency);
        latencyAddSampleIfNeeded("rdb-unlink-temp-file",latency);


        if (bysignal != SIGUSR1)
            server.lastbgsave_status = C_ERR;
    }
    server.rdb_child_pid = -1;
    server.rdb_child_type = RDB_CHILD_TYPE_NONE;
    server.rdb_save_time_last = time(((void*)0))-server.rdb_save_time_start;
    server.rdb_save_time_start = -1;


    updateSlavesWaitingBgsave((!bysignal && exitcode == 0) ? C_OK : C_ERR, RDB_CHILD_TYPE_DISK);
}
