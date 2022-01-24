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
struct index_state {int dummy; } ;

/* Variables and functions */
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int SEAF_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char*,int,int) ; 
 int FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct index_state*,int) ; 

int
FUNC7 (struct index_state *istate, const char *index_path)
{
    char index_shadow[SEAF_PATH_MAX];
    int index_fd;
    int ret = 0;

    FUNC4 (index_shadow, SEAF_PATH_MAX, "%s.shadow", index_path);
    index_fd = FUNC1 (index_shadow, O_RDWR | O_CREAT | O_TRUNC | O_BINARY,
                                 0666);
    if (index_fd < 0) {
        FUNC3 ("Failed to open shadow index: %s.\n", FUNC5(errno));
        return -1;
    }

    if (FUNC6 (istate, index_fd) < 0) {
        FUNC3 ("Failed to write shadow index: %s.\n", FUNC5(errno));
        FUNC0 (index_fd);
        return -1;
    }
    FUNC0 (index_fd);

    ret = FUNC2 (index_shadow, index_path);
    if (ret < 0) {
        FUNC3 ("Failed to update index errno=%d %s\n", errno, FUNC5(errno));
        return -1;
    }
    return 0;
}