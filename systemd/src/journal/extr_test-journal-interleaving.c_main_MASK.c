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
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int arg_keep ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  setup_interleaved ; 
 int /*<<< orphan*/  setup_sequential ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char *argv[]) {
        FUNC3(LOG_DEBUG);

        /* journal_file_open requires a valid machine id */
        if (FUNC0("/etc/machine-id", F_OK) != 0)
                return FUNC1("/etc/machine-id not found");

        arg_keep = argc > 1;

        FUNC4(setup_sequential);
        FUNC4(setup_interleaved);

        FUNC2();

        return 0;
}