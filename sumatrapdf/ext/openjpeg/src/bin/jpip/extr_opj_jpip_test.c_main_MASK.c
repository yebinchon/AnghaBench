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
typedef  int /*<<< orphan*/  index_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC6(int argc, char *argv[])
{
    int fd;
    index_t *jp2idx;
    if (argc < 2) {
        return 1;
    }

    if ((fd = FUNC4(argv[1], O_RDONLY)) == -1) {
        FUNC2(stderr, "Error: Target %s not found\n", argv[1]);
        return -1;
    }

    if (!(jp2idx = FUNC3(fd))) {
        FUNC2(stderr, "JP2 file broken\n");
        return -1;
    }

    FUNC5(jp2idx);
    FUNC1(&jp2idx);
    FUNC0(fd);

    return 0;
}