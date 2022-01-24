#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* opaque; void* zfree; void* zalloc; } ;
typedef  TYPE_1__ z_stream ;

/* Variables and functions */
 void* Z_NULL ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,unsigned char*) ; 
 char* FUNC5 (int) ; 
 unsigned char* match ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

int FUNC9(int argc, char **argv)
{
    int ret, len, test;
    char *outname;
    unsigned char *window;
    z_stream strm;

    /* initialize inflateBack state for repeated use */
    window = match;                         /* reuse LZW match buffer */
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    ret = FUNC4(&strm, 15, window);
    if (ret != Z_OK) {
        FUNC0(stderr, "gun out of memory error--aborting\n");
        return 1;
    }

    /* decompress each file to the same name with the suffix removed */
    argc--;
    argv++;
    test = 0;
    if (argc && FUNC7(*argv, "-h") == 0) {
        FUNC0(stderr, "gun 1.6 (17 Jan 2010)\n");
        FUNC0(stderr, "Copyright (C) 2003-2010 Mark Adler\n");
        FUNC0(stderr, "usage: gun [-t] [file1.gz [file2.Z ...]]\n");
        return 0;
    }
    if (argc && FUNC7(*argv, "-t") == 0) {
        test = 1;
        argc--;
        argv++;
    }
    if (argc)
        do {
            if (test)
                outname = NULL;
            else {
                len = (int)FUNC8(*argv);
                if (FUNC7(*argv + len - 3, ".gz") == 0 ||
                    FUNC7(*argv + len - 3, "-gz") == 0)
                    len -= 3;
                else if (FUNC7(*argv + len - 2, ".z") == 0 ||
                    FUNC7(*argv + len - 2, "-z") == 0 ||
                    FUNC7(*argv + len - 2, "_z") == 0 ||
                    FUNC7(*argv + len - 2, ".Z") == 0)
                    len -= 2;
                else {
                    FUNC0(stderr, "gun error: no gz type on %s--skipping\n",
                            *argv);
                    continue;
                }
                outname = FUNC5(len + 1);
                if (outname == NULL) {
                    FUNC0(stderr, "gun out of memory error--aborting\n");
                    ret = 1;
                    break;
                }
                FUNC6(outname, *argv, len);
                outname[len] = 0;
            }
            ret = FUNC2(&strm, *argv, outname, test);
            if (outname != NULL) FUNC1(outname);
            if (ret) break;
        } while (argv++, --argc);
    else
        ret = FUNC2(&strm, NULL, NULL, test);

    /* clean up */
    FUNC3(&strm);
    return ret;
}