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
typedef  int /*<<< orphan*/  mstime_t ;
struct TYPE_2__ {int aof_child_pid; int aof_fd; char* aof_filename; scalar_t__ aof_fsync; int aof_selected_db; scalar_t__ aof_state; int aof_rewrite_time_start; int aof_rewrite_scheduled; scalar_t__ aof_rewrite_time_last; void* aof_lastbgrewrite_status; int /*<<< orphan*/  aof_buf; int /*<<< orphan*/  aof_current_size; int /*<<< orphan*/  aof_rewrite_base_size; } ;

/* Variables and functions */
 scalar_t__ AOF_FSYNC_ALWAYS ; 
 scalar_t__ AOF_FSYNC_EVERYSEC ; 
 scalar_t__ AOF_ON ; 
 scalar_t__ AOF_WAIT_REWRITE ; 
 int /*<<< orphan*/  BIO_CLOSE_FILE ; 
 void* C_ERR ; 
 void* C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int O_APPEND ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 long long FUNC21 () ; 

void FUNC22(int exitcode, int bysignal) {
    if (!bysignal && exitcode == 0) {
        int newfd, oldfd;
        char tmpfile[256];
        long long now = FUNC21();
        mstime_t latency;

        FUNC17(LL_NOTICE,
            "Background AOF rewrite terminated with success");

        /* Flush the differences accumulated by the parent to the
         * rewritten AOF. */
        FUNC11(latency);
        FUNC18(tmpfile,256,"temp-rewriteaof-bg-%d.aof",
            (int)server.aof_child_pid);
        newfd = FUNC12(tmpfile,O_WRONLY|O_APPEND);
        if (newfd == -1) {
            FUNC17(LL_WARNING,
                "Unable to open the temporary AOF produced by the child: %s", FUNC19(errno));
            goto cleanup;
        }

        if (FUNC4(newfd) == -1) {
            FUNC17(LL_WARNING,
                "Error trying to flush the parent diff to the rewritten AOF: %s", FUNC19(errno));
            FUNC8(newfd);
            goto cleanup;
        }
        FUNC10(latency);
        FUNC9("aof-rewrite-diff-write",latency);

        FUNC17(LL_NOTICE,
            "Residual parent diff successfully flushed to the rewritten AOF (%.2f MB)", (double) FUNC3() / (1024*1024));

        /* The only remaining thing to do is to rename the temporary file to
         * the configured file and switch the file descriptor used to do AOF
         * writes. We don't want close(2) or rename(2) calls to block the
         * server on old file deletion.
         *
         * There are two possible scenarios:
         *
         * 1) AOF is DISABLED and this was a one time rewrite. The temporary
         * file will be renamed to the configured file. When this file already
         * exists, it will be unlinked, which may block the server.
         *
         * 2) AOF is ENABLED and the rewritten AOF will immediately start
         * receiving writes. After the temporary file is renamed to the
         * configured file, the original AOF file descriptor will be closed.
         * Since this will be the last reference to that file, closing it
         * causes the underlying file to be unlinked, which may block the
         * server.
         *
         * To mitigate the blocking effect of the unlink operation (either
         * caused by rename(2) in scenario 1, or by close(2) in scenario 2), we
         * use a background thread to take care of this. First, we
         * make scenario 1 identical to scenario 2 by opening the target file
         * when it exists. The unlink operation after the rename(2) will then
         * be executed upon calling close(2) for its descriptor. Everything to
         * guarantee atomicity for this switch has already happened by then, so
         * we don't care what the outcome or duration of that close operation
         * is, as long as the file descriptor is released again. */
        if (server.aof_fd == -1) {
            /* AOF disabled */

            /* Don't care if this fails: oldfd will be -1 and we handle that.
             * One notable case of -1 return is if the old file does
             * not exist. */
            oldfd = FUNC12(server.aof_filename,O_RDONLY|O_NONBLOCK);
        } else {
            /* AOF enabled */
            oldfd = -1; /* We'll set this to the current AOF filedes later. */
        }

        /* Rename the temporary file. This will not unlink the target file if
         * it exists, because we reference it with "oldfd". */
        FUNC11(latency);
        if (FUNC14(tmpfile,server.aof_filename) == -1) {
            FUNC17(LL_WARNING,
                "Error trying to rename the temporary AOF file %s into %s: %s",
                tmpfile,
                server.aof_filename,
                FUNC19(errno));
            FUNC8(newfd);
            if (oldfd != -1) FUNC8(oldfd);
            goto cleanup;
        }
        FUNC10(latency);
        FUNC9("aof-rename",latency);

        if (server.aof_fd == -1) {
            /* AOF disabled, we don't need to set the AOF file descriptor
             * to this new file, so we can close it. */
            FUNC8(newfd);
        } else {
            /* AOF enabled, replace the old fd with the new one. */
            oldfd = server.aof_fd;
            server.aof_fd = newfd;
            if (server.aof_fsync == AOF_FSYNC_ALWAYS)
                FUNC13(newfd);
            else if (server.aof_fsync == AOF_FSYNC_EVERYSEC)
                FUNC6(newfd);
            server.aof_selected_db = -1; /* Make sure SELECT is re-issued */
            FUNC5();
            server.aof_rewrite_base_size = server.aof_current_size;
            server.aof_current_size = server.aof_current_size;

            /* Clear regular AOF buffer since its contents was just written to
             * the new AOF from the background rewrite buffer. */
            FUNC16(server.aof_buf);
            server.aof_buf = FUNC15();
        }

        server.aof_lastbgrewrite_status = C_OK;

        FUNC17(LL_NOTICE, "Background AOF rewrite finished successfully");
        /* Change state from WAIT_REWRITE to ON if needed */
        if (server.aof_state == AOF_WAIT_REWRITE)
            server.aof_state = AOF_ON;

        /* Asynchronously close the overwritten AOF. */
        if (oldfd != -1) FUNC7(BIO_CLOSE_FILE,(void*)(long)oldfd,NULL,NULL);

        FUNC17(LL_VERBOSE,
            "Background AOF rewrite signal handler took %lldus", FUNC21()-now);
    } else if (!bysignal && exitcode != 0) {
        /* SIGUSR1 is whitelisted, so we have a way to kill a child without
         * tirggering an error condition. */
        if (bysignal != SIGUSR1)
            server.aof_lastbgrewrite_status = C_ERR;
        FUNC17(LL_WARNING,
            "Background AOF rewrite terminated with error");
    } else {
        server.aof_lastbgrewrite_status = C_ERR;

        FUNC17(LL_WARNING,
            "Background AOF rewrite terminated by signal %d", bysignal);
    }

cleanup:
    FUNC0();
    FUNC2();
    FUNC1(server.aof_child_pid);
    server.aof_child_pid = -1;
    server.aof_rewrite_time_last = FUNC20(NULL)-server.aof_rewrite_time_start;
    server.aof_rewrite_time_start = -1;
    /* Schedule a new rewrite if we are waiting for it to switch the AOF ON. */
    if (server.aof_state == AOF_WAIT_REWRITE)
        server.aof_rewrite_scheduled = 1;
}