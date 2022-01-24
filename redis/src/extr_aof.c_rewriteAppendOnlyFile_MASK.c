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
typedef  int /*<<< orphan*/  rio ;
typedef  int mstime_t ;
struct TYPE_2__ {int /*<<< orphan*/  aof_child_diff; int /*<<< orphan*/  aof_pipe_read_ack_from_parent; int /*<<< orphan*/  aof_pipe_write_ack_to_parent; int /*<<< orphan*/  aof_pipe_read_data_from_parent; scalar_t__ aof_use_rdb_preamble; scalar_t__ aof_rewrite_incremental_fsync; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 scalar_t__ ANET_OK ; 
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  RDBFLAGS_AOF_PREAMBLE ; 
 int /*<<< orphan*/  REDIS_AUTOSYNC_BYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 double FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int FUNC25 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC26(char *filename) {
    rio aof;
    FILE *fp;
    char tmpfile[256];
    char byte;

    /* Note that we have to use a different temp name here compared to the
     * one used by rewriteAppendOnlyFileBackground() function. */
    FUNC19(tmpfile,256,"temp-rewriteaof-%d.aof", (int) FUNC8());
    fp = FUNC6(tmpfile,"w");
    if (!fp) {
        FUNC18(LL_WARNING, "Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s", FUNC22(errno));
        return C_ERR;
    }

    server.aof_child_diff = FUNC16();
    FUNC13(&aof,fp);

    if (server.aof_rewrite_incremental_fsync)
        FUNC14(&aof,REDIS_AUTOSYNC_BYTES);

    FUNC20(RDBFLAGS_AOF_PREAMBLE);

    if (server.aof_use_rdb_preamble) {
        int error;
        if (FUNC10(&aof,&error,RDBFLAGS_AOF_PREAMBLE,NULL) == C_ERR) {
            errno = error;
            goto werr;
        }
    } else {
        if (FUNC12(&aof) == C_ERR) goto werr;
    }

    /* Do an initial slow fsync here while the parent is still sending
     * data, in order to make the next final fsync faster. */
    if (FUNC4(fp) == EOF) goto werr;
    if (FUNC7(FUNC5(fp)) == -1) goto werr;

    /* Read again a few times to get more data from the parent.
     * We can't read forever (the server may receive data from clients
     * faster than it is able to send data to the child), so we try to read
     * some more data in a loop as soon as there is a good chance more data
     * will come. If it looks like we are wasting time, we abort (this
     * happens after 20 ms without new data). */
    int nodata = 0;
    mstime_t start = FUNC9();
    while(FUNC9()-start < 1000 && nodata < 20) {
        if (FUNC0(server.aof_pipe_read_data_from_parent, AE_READABLE, 1) <= 0)
        {
            nodata++;
            continue;
        }
        nodata = 0; /* Start counting from zero, we stop on N *contiguous*
                       timeouts. */
        FUNC2();
    }

    /* Ask the master to stop sending diffs. */
    if (FUNC25(server.aof_pipe_write_ack_to_parent,"!",1) != 1) goto werr;
    if (FUNC1(NULL,server.aof_pipe_read_ack_from_parent) != ANET_OK)
        goto werr;
    /* We read the ACK from the server using a 10 seconds timeout. Normally
     * it should reply ASAP, but just in case we lose its reply, we are sure
     * the child will eventually get terminated. */
    if (FUNC23(server.aof_pipe_read_ack_from_parent,&byte,1,5000) != 1 ||
        byte != '!') goto werr;
    FUNC18(LL_NOTICE,"Parent agreed to stop sending diffs. Finalizing AOF...");

    /* Read the final diff if any. */
    FUNC2();

    /* Write the received diff to the file. */
    FUNC18(LL_NOTICE,
        "Concatenating %.2f MB of AOF diff received from parent.",
        (double) FUNC17(server.aof_child_diff) / (1024*1024));
    if (FUNC15(&aof,server.aof_child_diff,FUNC17(server.aof_child_diff)) == 0)
        goto werr;

    /* Make sure data will not remain on the OS's output buffers */
    if (FUNC4(fp) == EOF) goto werr;
    if (FUNC7(FUNC5(fp)) == -1) goto werr;
    if (FUNC3(fp) == EOF) goto werr;

    /* Use RENAME to make sure the DB file is changed atomically only
     * if the generate DB file is ok. */
    if (FUNC11(tmpfile,filename) == -1) {
        FUNC18(LL_WARNING,"Error moving temp append only file on the final destination: %s", FUNC22(errno));
        FUNC24(tmpfile);
        FUNC21(0);
        return C_ERR;
    }
    FUNC18(LL_NOTICE,"SYNC append only file rewrite performed");
    FUNC21(1);
    return C_OK;

werr:
    FUNC18(LL_WARNING,"Write error writing append only file on disk: %s", FUNC22(errno));
    FUNC3(fp);
    FUNC24(tmpfile);
    FUNC21(0);
    return C_ERR;
}