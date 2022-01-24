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
typedef  int pid_t ;
struct TYPE_2__ {int aof_child_pid; int aof_selected_db; int /*<<< orphan*/  aof_rewrite_time_start; scalar_t__ aof_rewrite_scheduled; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHILD_INFO_TYPE_AOF ; 
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(void) {
    pid_t childpid;

    if (FUNC5()) return C_ERR;
    if (FUNC1() != C_OK) return C_ERR;
    FUNC6();
    if ((childpid = FUNC7()) == 0) {
        char tmpfile[256];

        /* Child */
        FUNC8("redis-aof-rewrite");
        FUNC13(tmpfile,256,"temp-rewriteaof-bg-%d.aof", (int) FUNC4());
        if (FUNC10(tmpfile) == C_OK) {
            FUNC11(CHILD_INFO_TYPE_AOF, "AOF rewrite");
            FUNC3(0);
        } else {
            FUNC3(1);
        }
    } else {
        /* Parent */
        if (childpid == -1) {
            FUNC2();
            FUNC12(LL_WARNING,
                "Can't rewrite append only file in background: fork: %s",
                FUNC14(errno));
            FUNC0();
            return C_ERR;
        }
        FUNC12(LL_NOTICE,
            "Background append only file rewriting started by pid %d",childpid);
        server.aof_rewrite_scheduled = 0;
        server.aof_rewrite_time_start = FUNC15(NULL);
        server.aof_child_pid = childpid;
        /* We set appendseldb to -1 in order to force the next call to the
         * feedAppendOnlyFile() to issue a SELECT command, so the differences
         * accumulated by the parent into server.aof_rewrite_buf will start
         * with a SELECT statement and it will be safe to merge. */
        server.aof_selected_db = -1;
        FUNC9();
        return C_OK;
    }
    return C_OK; /* unreached */
}