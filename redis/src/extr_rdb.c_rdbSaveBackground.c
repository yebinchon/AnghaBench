
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rdbSaveInfo ;
typedef int pid_t ;
struct TYPE_2__ {int lastbgsave_status; int rdb_child_pid; int rdb_child_type; void* rdb_save_time_start; void* lastbgsave_try; int dirty; int dirty_before_bgsave; } ;


 int CHILD_INFO_TYPE_RDB ;
 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int RDB_CHILD_TYPE_DISK ;
 int closeChildInfoPipe () ;
 int errno ;
 int exitFromChild (int) ;
 scalar_t__ hasActiveChildProcess () ;
 int openChildInfoPipe () ;
 int rdbSave (char*,int *) ;
 int redisFork () ;
 int redisSetProcTitle (char*) ;
 int sendChildCOWInfo (int ,char*) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int) ;
 int strerror (int ) ;
 void* time (int *) ;

int rdbSaveBackground(char *filename, rdbSaveInfo *rsi) {
    pid_t childpid;

    if (hasActiveChildProcess()) return C_ERR;

    server.dirty_before_bgsave = server.dirty;
    server.lastbgsave_try = time(((void*)0));
    openChildInfoPipe();

    if ((childpid = redisFork()) == 0) {
        int retval;


        redisSetProcTitle("redis-rdb-bgsave");
        retval = rdbSave(filename,rsi);
        if (retval == C_OK) {
            sendChildCOWInfo(CHILD_INFO_TYPE_RDB, "RDB");
        }
        exitFromChild((retval == C_OK) ? 0 : 1);
    } else {

        if (childpid == -1) {
            closeChildInfoPipe();
            server.lastbgsave_status = C_ERR;
            serverLog(LL_WARNING,"Can't save in background: fork: %s",
                strerror(errno));
            return C_ERR;
        }
        serverLog(LL_NOTICE,"Background saving started by pid %d",childpid);
        server.rdb_save_time_start = time(((void*)0));
        server.rdb_child_pid = childpid;
        server.rdb_child_type = RDB_CHILD_TYPE_DISK;
        return C_OK;
    }
    return C_OK;
}
