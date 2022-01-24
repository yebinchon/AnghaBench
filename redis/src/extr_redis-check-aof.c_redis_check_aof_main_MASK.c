#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct redis_stat {int st_size; } ;
typedef  int /*<<< orphan*/  sig ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int,char**,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct redis_stat*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 

int FUNC15(int argc, char **argv) {
    char *filename;
    int fix = 0;

    if (argc < 2) {
        FUNC8("Usage: %s [--fix] <file.aof>\n", argv[0]);
        FUNC0(1);
    } else if (argc == 2) {
        filename = argv[1];
    } else if (argc == 3) {
        if (FUNC13(argv[1],"--fix") != 0) {
            FUNC8("Invalid argument: %s\n", argv[1]);
            FUNC0(1);
        }
        filename = argv[2];
        fix = 1;
    } else {
        FUNC8("Invalid arguments\n");
        FUNC0(1);
    }

    FILE *fp = FUNC4(filename,"r+");
    if (fp == NULL) {
        FUNC8("Cannot open file: %s\n", filename);
        FUNC0(1);
    }

    struct redis_stat sb;
    if (FUNC11(FUNC3(fp),&sb) == -1) {
        FUNC8("Cannot stat file: %s\n", filename);
        FUNC0(1);
    }

    off_t size = sb.st_size;
    if (size == 0) {
        FUNC8("Empty file: %s\n", filename);
        FUNC0(1);
    }

    /* This AOF file may have an RDB preamble. Check this to start, and if this
     * is the case, start processing the RDB part. */
    if (size >= 8) {    /* There must be at least room for the RDB header. */
        char sig[5];
        int has_preamble = FUNC5(sig,sizeof(sig),1,fp) == 1 &&
                            FUNC7(sig,"REDIS",sizeof(sig)) == 0;
        FUNC12(fp);
        if (has_preamble) {
            FUNC8("The AOF appears to start with an RDB preamble.\n"
                   "Checking the RDB preamble to start:\n");
            if (FUNC10(argc,argv,fp) == C_ERR) {
                FUNC8("RDB preamble of AOF file is not sane, aborting.\n");
                FUNC0(1);
            } else {
                FUNC8("RDB preamble is OK, proceeding with AOF tail...\n");
            }
        }
    }

    off_t pos = FUNC9(fp);
    off_t diff = size-pos;
    FUNC8("AOF analyzed: size=%lld, ok_up_to=%lld, diff=%lld\n",
        (long long) size, (long long) pos, (long long) diff);
    if (diff > 0) {
        if (fix) {
            char buf[2];
            FUNC8("This will shrink the AOF from %lld bytes, with %lld bytes, to %lld bytes\n",(long long)size,(long long)diff,(long long)pos);
            FUNC8("Continue? [y/N]: ");
            if (FUNC2(buf,sizeof(buf),stdin) == NULL ||
                FUNC14(buf,"y",1) != 0) {
                    FUNC8("Aborting...\n");
                    FUNC0(1);
            }
            if (FUNC6(FUNC3(fp), pos) == -1) {
                FUNC8("Failed to truncate AOF\n");
                FUNC0(1);
            } else {
                FUNC8("Successfully truncated AOF\n");
            }
        } else {
            FUNC8("AOF is not valid. "
                   "Use the --fix option to try fixing it.\n");
            FUNC0(1);
        }
    } else {
        FUNC8("AOF is valid\n");
    }

    FUNC1(fp);
    FUNC0(0);
}