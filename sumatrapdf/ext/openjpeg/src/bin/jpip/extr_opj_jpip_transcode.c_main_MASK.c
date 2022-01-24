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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (char**) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 

int FUNC5(int argc, char *argv[])
{
    char *ext;
    if (argc < 3) {
        FUNC0(stderr, "Too few arguments:\n");
        FUNC0(stderr, " - input  jpt or jpp file\n");
        FUNC0(stderr, " - output j2k file\n");
        return 1;
    }

    ext = FUNC4(argv[2], '.');
    if (ext) {
        /* strcasecmp ? */
        if (FUNC3(ext, ".jp2") == 0) {
            return FUNC2(argv);
        }
        if (FUNC3(ext, ".j2k") == 0) {
            return FUNC1(argv);
        }
    }

    FUNC0(stderr, "Invalid file extension for output file: %s\n", argv[2]);
    return 1;
}