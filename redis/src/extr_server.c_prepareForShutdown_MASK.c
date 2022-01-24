#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rdbSaveInfo ;
struct TYPE_2__ {int rdb_child_pid; int module_child_pid; scalar_t__ aof_state; int aof_child_pid; scalar_t__ saveparamslen; scalar_t__ sentinel_mode; scalar_t__ pidfile; scalar_t__ daemonize; int /*<<< orphan*/  rdb_filename; int /*<<< orphan*/  aof_fd; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 scalar_t__ AOF_WAIT_REWRITE ; 
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  REDISMODULE_EVENT_SHUTDOWN ; 
 int SHUTDOWN_NOSAVE ; 
 int SHUTDOWN_SAVE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

int FUNC13(int flags) {
    int save = flags & SHUTDOWN_SAVE;
    int nosave = flags & SHUTDOWN_NOSAVE;

    FUNC11(LL_WARNING,"User requested shutdown...");

    /* Kill all the Lua debugger forked sessions. */
    FUNC6();

    /* Kill the saving child if there is a background saving in progress.
       We want to avoid race conditions, for instance our saving child may
       overwrite the synchronous saving did by SHUTDOWN. */
    if (server.rdb_child_pid != -1) {
        FUNC11(LL_WARNING,"There is a child saving an .rdb. Killing it!");
        FUNC5();
    }

    /* Kill module child if there is one. */
    if (server.module_child_pid != -1) {
        FUNC11(LL_WARNING,"There is a module fork child. Killing it!");
        FUNC0(server.module_child_pid,0);
    }

    if (server.aof_state != AOF_OFF) {
        /* Kill the AOF saving child as the AOF we already have may be longer
         * but contains the full dataset anyway. */
        if (server.aof_child_pid != -1) {
            /* If we have AOF enabled but haven't written the AOF yet, don't
             * shutdown or else the dataset will be lost. */
            if (server.aof_state == AOF_WAIT_REWRITE) {
                FUNC11(LL_WARNING, "Writing initial AOF, can't exit.");
                return C_ERR;
            }
            FUNC11(LL_WARNING,
                "There is a child rewriting the AOF. Killing it!");
            FUNC4();
        }
        /* Append only file: flush buffers and fsync() the AOF at exit */
        FUNC11(LL_NOTICE,"Calling fsync() on the AOF file.");
        FUNC2(1);
        FUNC10(server.aof_fd);
    }

    /* Create a new RDB file before exiting. */
    if ((server.saveparamslen > 0 && !nosave) || save) {
        FUNC11(LL_NOTICE,"Saving the final RDB snapshot before exiting.");
        /* Snapshotting. Perform a SYNC SAVE and exit */
        rdbSaveInfo rsi, *rsiptr;
        rsiptr = FUNC8(&rsi);
        if (FUNC9(server.rdb_filename,rsiptr) != C_OK) {
            /* Ooops.. error saving! The best we can do is to continue
             * operating. Note that if there was a background saving process,
             * in the next cron() Redis will be notified that the background
             * saving aborted, handling special stuff like slaves pending for
             * synchronization... */
            FUNC11(LL_WARNING,"Error trying to save the DB, can't exit.");
            return C_ERR;
        }
    }

    /* Fire the shutdown modules event. */
    FUNC7(REDISMODULE_EVENT_SHUTDOWN,0,NULL);

    /* Remove the pid file if possible and needed. */
    if (server.daemonize || server.pidfile) {
        FUNC11(LL_NOTICE,"Removing the pid file.");
        FUNC12(server.pidfile);
    }

    /* Best effort flush of slave output buffers, so that we hopefully
     * send them pending writes. */
    FUNC3();

    /* Close the listening sockets. Apparently this allows faster restarts. */
    FUNC1(1);
    FUNC11(LL_WARNING,"%s is now ready to exit, bye bye...",
        server.sentinel_mode ? "Sentinel" : "Redis");
    return C_OK;
}