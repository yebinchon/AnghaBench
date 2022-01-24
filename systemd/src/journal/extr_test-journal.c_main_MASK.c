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
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int arg_keep ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int argc, char *argv[]) {
        arg_keep = argc > 1;

        FUNC5(LOG_INFO);

        /* journal_file_open requires a valid machine id */
        if (FUNC0("/etc/machine-id", F_OK) != 0)
                return FUNC1("/etc/machine-id not found");

        FUNC4();
        FUNC2();
#if HAVE_XZ || HAVE_LZ4
        test_min_compress_size();
#endif

        return 0;
}