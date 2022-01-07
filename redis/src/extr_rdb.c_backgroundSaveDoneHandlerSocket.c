
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdb_child_pid; int rdb_save_time_start; int rdb_child_type; } ;


 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int RDB_CHILD_TYPE_NONE ;
 int RDB_CHILD_TYPE_SOCKET ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int updateSlavesWaitingBgsave (int ,int ) ;

void backgroundSaveDoneHandlerSocket(int exitcode, int bysignal) {
    if (!bysignal && exitcode == 0) {
        serverLog(LL_NOTICE,
            "Background RDB transfer terminated with success");
    } else if (!bysignal && exitcode != 0) {
        serverLog(LL_WARNING, "Background transfer error");
    } else {
        serverLog(LL_WARNING,
            "Background transfer terminated by signal %d", bysignal);
    }
    server.rdb_child_pid = -1;
    server.rdb_child_type = RDB_CHILD_TYPE_NONE;
    server.rdb_save_time_start = -1;

    updateSlavesWaitingBgsave((!bysignal && exitcode == 0) ? C_OK : C_ERR, RDB_CHILD_TYPE_SOCKET);
}
