#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ loading_process_events_interval_bytes; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** integers; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int rdbCheckMode ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 
 TYPE_2__ server ; 
 TYPE_1__ shared ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(int argc, char **argv, FILE *fp) {
    if (argc != 2 && fp == NULL) {
        FUNC2(stderr, "Usage: %s <rdb-file-name>\n", argv[0]);
        FUNC1(1);
    }
    /* In order to call the loading functions we need to create the shared
     * integer objects, however since this function may be called from
     * an already initialized Redis instance, check if we really need to. */
    if (shared.integers[0] == NULL)
        FUNC0();
    server.loading_process_events_interval_bytes = 0;
    rdbCheckMode = 1;
    FUNC3("Checking RDB file %s", argv[1]);
    FUNC4();
    int retval = FUNC6(argv[1],fp);
    if (retval == 0) {
        FUNC3("\\o/ RDB looks OK! \\o/");
        FUNC5();
    }
    if (fp) return (retval == 0) ? C_OK : C_ERR;
    FUNC1(retval);
}