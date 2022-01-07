
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rdbSaveInfo ;
struct TYPE_2__ {int rdb_child_pid; int module_child_pid; scalar_t__ aof_state; int aof_child_pid; scalar_t__ saveparamslen; scalar_t__ sentinel_mode; scalar_t__ pidfile; scalar_t__ daemonize; int rdb_filename; int aof_fd; } ;


 scalar_t__ AOF_OFF ;
 scalar_t__ AOF_WAIT_REWRITE ;
 int C_ERR ;
 scalar_t__ C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int REDISMODULE_EVENT_SHUTDOWN ;
 int SHUTDOWN_NOSAVE ;
 int SHUTDOWN_SAVE ;
 int TerminateModuleForkChild (int,int ) ;
 int closeListeningSockets (int) ;
 int flushAppendOnlyFile (int) ;
 int flushSlavesOutputBuffers () ;
 int killAppendOnlyChild () ;
 int killRDBChild () ;
 int ldbKillForkedSessions () ;
 int moduleFireServerEvent (int ,int ,int *) ;
 int * rdbPopulateSaveInfo (int *) ;
 scalar_t__ rdbSave (int ,int *) ;
 int redis_fsync (int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int unlink (scalar_t__) ;

int prepareForShutdown(int flags) {
    int save = flags & SHUTDOWN_SAVE;
    int nosave = flags & SHUTDOWN_NOSAVE;

    serverLog(LL_WARNING,"User requested shutdown...");


    ldbKillForkedSessions();




    if (server.rdb_child_pid != -1) {
        serverLog(LL_WARNING,"There is a child saving an .rdb. Killing it!");
        killRDBChild();
    }


    if (server.module_child_pid != -1) {
        serverLog(LL_WARNING,"There is a module fork child. Killing it!");
        TerminateModuleForkChild(server.module_child_pid,0);
    }

    if (server.aof_state != AOF_OFF) {


        if (server.aof_child_pid != -1) {


            if (server.aof_state == AOF_WAIT_REWRITE) {
                serverLog(LL_WARNING, "Writing initial AOF, can't exit.");
                return C_ERR;
            }
            serverLog(LL_WARNING,
                "There is a child rewriting the AOF. Killing it!");
            killAppendOnlyChild();
        }

        serverLog(LL_NOTICE,"Calling fsync() on the AOF file.");
        flushAppendOnlyFile(1);
        redis_fsync(server.aof_fd);
    }


    if ((server.saveparamslen > 0 && !nosave) || save) {
        serverLog(LL_NOTICE,"Saving the final RDB snapshot before exiting.");

        rdbSaveInfo rsi, *rsiptr;
        rsiptr = rdbPopulateSaveInfo(&rsi);
        if (rdbSave(server.rdb_filename,rsiptr) != C_OK) {





            serverLog(LL_WARNING,"Error trying to save the DB, can't exit.");
            return C_ERR;
        }
    }


    moduleFireServerEvent(REDISMODULE_EVENT_SHUTDOWN,0,((void*)0));


    if (server.daemonize || server.pidfile) {
        serverLog(LL_NOTICE,"Removing the pid file.");
        unlink(server.pidfile);
    }



    flushSlavesOutputBuffers();


    closeListeningSockets(1);
    serverLog(LL_WARNING,"%s is now ready to exit, bye bye...",
        server.sentinel_mode ? "Sentinel" : "Redis");
    return C_OK;
}
