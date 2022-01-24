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
 int SHOW_DEFAULTS ; 
 int SHOW_OVERRIDDEN ; 
 int arg_diff ; 
 int arg_flags ; 
 int /*<<< orphan*/  arg_pager_flags ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(int argc, char *argv[]) {
        int r, k, n_found = 0;

        FUNC2(true);
        FUNC1();
        FUNC0();

        r = FUNC4(argc, argv);
        if (r <= 0)
                return r;

        if (arg_flags == 0)
                arg_flags = SHOW_DEFAULTS;

        if (arg_diff < 0)
                arg_diff = !!(arg_flags & SHOW_OVERRIDDEN);
        else if (arg_diff)
                arg_flags |= SHOW_OVERRIDDEN;

        (void) FUNC3(arg_pager_flags);

        if (optind < argc) {
                int i;

                for (i = optind; i < argc; i++) {
                        FUNC5(argv[i], false);

                        k = FUNC7(argv[i]);
                        if (k < 0)
                                r = k;
                        else
                                n_found += k;
                }

        } else {
                k = FUNC8(NULL);
                if (k < 0)
                        r = k;
                else
                        n_found += k;
        }

        if (r >= 0)
                FUNC6("%s%i overridden configuration files found.\n", n_found ? "\n" : "", n_found);
        return r;
}