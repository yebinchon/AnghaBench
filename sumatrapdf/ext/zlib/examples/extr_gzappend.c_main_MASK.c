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
typedef  int /*<<< orphan*/  z_stream ;

/* Variables and functions */
 int Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(int argc, char **argv)
{
    int gd, level;
    z_stream strm;

    /* ignore command name */
    argc--; argv++;

    /* provide usage if no arguments */
    if (*argv == NULL) {
        FUNC3(
            "gzappend 1.2 (11 Oct 2012) Copyright (C) 2003, 2012 Mark Adler\n"
               );
        FUNC3(
            "usage: gzappend [-level] file.gz [ addthis [ andthis ... ]]\n");
        return 0;
    }

    /* set compression level */
    level = Z_DEFAULT_COMPRESSION;
    if (argv[0][0] == '-') {
        if (argv[0][1] < '0' || argv[0][1] > '9' || argv[0][2] != 0)
            FUNC0("invalid compression level", "");
        level = argv[0][1] - '0';
        if (*++argv == NULL) FUNC0("no gzip file name after options", "");
    }

    /* prepare to append to gzip file */
    gd = FUNC1(*argv++, &strm, level);

    /* append files on command line, or from stdin if none */
    if (*argv == NULL)
        FUNC2(NULL, gd, &strm, 1);
    else
        do {
            FUNC2(*argv, gd, &strm, argv[1] == NULL);
        } while (*++argv != NULL);
    return 0;
}