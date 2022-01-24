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
typedef  int /*<<< orphan*/  rdbSaveInfo ;
struct TYPE_2__ {int lastbgsave_status; int /*<<< orphan*/  lastsave; scalar_t__ dirty; scalar_t__ rdb_save_incremental_fsync; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  RDBFLAGS_NONE ; 
 int /*<<< orphan*/  REDIS_AUTOSYNC_BYTES ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int FUNC18(char *filename, rdbSaveInfo *rsi) {
    char tmpfile[256];
    char cwd[MAXPATHLEN]; /* Current working dir path for error messages. */
    FILE *fp;
    rio rdb;
    int error = 0;

    FUNC12(tmpfile,256,"temp-%d.rdb", (int) FUNC6());
    fp = FUNC3(tmpfile,"w");
    if (!fp) {
        char *cwdp = FUNC5(cwd,MAXPATHLEN);
        FUNC11(LL_WARNING,
            "Failed opening the RDB file %s (in server root dir %s) "
            "for saving: %s",
            filename,
            cwdp ? cwdp : "unknown",
            FUNC15(errno));
        return C_ERR;
    }

    FUNC9(&rdb,fp);
    FUNC13(RDBFLAGS_NONE);

    if (server.rdb_save_incremental_fsync)
        FUNC10(&rdb,REDIS_AUTOSYNC_BYTES);

    if (FUNC7(&rdb,&error,RDBFLAGS_NONE,rsi) == C_ERR) {
        errno = error;
        goto werr;
    }

    /* Make sure data will not remain on the OS's output buffers */
    if (FUNC1(fp) == EOF) goto werr;
    if (FUNC4(FUNC2(fp)) == -1) goto werr;
    if (FUNC0(fp) == EOF) goto werr;

    /* Use RENAME to make sure the DB file is changed atomically only
     * if the generate DB file is ok. */
    if (FUNC8(tmpfile,filename) == -1) {
        char *cwdp = FUNC5(cwd,MAXPATHLEN);
        FUNC11(LL_WARNING,
            "Error moving temp DB file %s on the final "
            "destination %s (in server root dir %s): %s",
            tmpfile,
            filename,
            cwdp ? cwdp : "unknown",
            FUNC15(errno));
        FUNC17(tmpfile);
        FUNC14(0);
        return C_ERR;
    }

    FUNC11(LL_NOTICE,"DB saved on disk");
    server.dirty = 0;
    server.lastsave = FUNC16(NULL);
    server.lastbgsave_status = C_OK;
    FUNC14(1);
    return C_OK;

werr:
    FUNC11(LL_WARNING,"Write error saving DB on disk: %s", FUNC15(errno));
    FUNC0(fp);
    FUNC17(tmpfile);
    FUNC14(0);
    return C_ERR;
}