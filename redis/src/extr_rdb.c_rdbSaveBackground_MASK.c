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
typedef  int pid_t ;
struct TYPE_2__ {int lastbgsave_status; int rdb_child_pid; int /*<<< orphan*/  rdb_child_type; void* rdb_save_time_start; void* lastbgsave_try; int /*<<< orphan*/  dirty; int /*<<< orphan*/  dirty_before_bgsave; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHILD_INFO_TYPE_RDB ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  RDB_CHILD_TYPE_DISK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(char *filename, rdbSaveInfo *rsi) {
    pid_t childpid;

    if (FUNC2()) return C_ERR;

    server.dirty_before_bgsave = server.dirty;
    server.lastbgsave_try = FUNC10(NULL);
    FUNC3();

    if ((childpid = FUNC5()) == 0) {
        int retval;

        /* Child */
        FUNC6("redis-rdb-bgsave");
        retval = FUNC4(filename,rsi);
        if (retval == C_OK) {
            FUNC7(CHILD_INFO_TYPE_RDB, "RDB");
        }
        FUNC1((retval == C_OK) ? 0 : 1);
    } else {
        /* Parent */
        if (childpid == -1) {
            FUNC0();
            server.lastbgsave_status = C_ERR;
            FUNC8(LL_WARNING,"Can't save in background: fork: %s",
                FUNC9(errno));
            return C_ERR;
        }
        FUNC8(LL_NOTICE,"Background saving started by pid %d",childpid);
        server.rdb_save_time_start = FUNC10(NULL);
        server.rdb_child_pid = childpid;
        server.rdb_child_type = RDB_CHILD_TYPE_DISK;
        return C_OK;
    }
    return C_OK; /* unreached */
}