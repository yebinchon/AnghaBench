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
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(
                pam_handle_t *handle,
                int argc, const char **argv,
                const char **class,
                const char **type,
                const char **desktop,
                bool *debug) {

        unsigned i;

        FUNC0(argc >= 0);
        FUNC0(argc == 0 || argv);

        for (i = 0; i < (unsigned) argc; i++) {
                if (FUNC3(argv[i], "class=")) {
                        if (class)
                                *class = argv[i] + 6;

                } else if (FUNC3(argv[i], "type=")) {
                        if (type)
                                *type = argv[i] + 5;

                } else if (FUNC3(argv[i], "desktop=")) {
                        if (desktop)
                                *desktop = argv[i] + 8;

                } else if (FUNC4(argv[i], "debug")) {
                        if (debug)
                                *debug = true;

                } else if (FUNC3(argv[i], "debug=")) {
                        int k;

                        k = FUNC2(argv[i] + 6);
                        if (k < 0)
                                FUNC1(handle, LOG_WARNING, "Failed to parse debug= argument, ignoring.");
                        else if (debug)
                                *debug = k;

                } else
                        FUNC1(handle, LOG_WARNING, "Unknown parameter '%s', ignoring", argv[i]);
        }

        return 0;
}