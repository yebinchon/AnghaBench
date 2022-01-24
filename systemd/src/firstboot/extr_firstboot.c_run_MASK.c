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
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char**) ; 
 int FUNC3 (char*,int*) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(int argc, char *argv[]) {
        bool enabled;
        int r;

        r = FUNC2(argc, argv);
        if (r <= 0)
                return r;

        FUNC1();

        FUNC10(0022);

        r = FUNC3("systemd.firstboot", &enabled);
        if (r < 0)
                return FUNC0(r, "Failed to parse systemd.firstboot= kernel command line argument, ignoring: %m");
        if (r > 0 && !enabled)
                return 0; /* disabled */

        r = FUNC6();
        if (r < 0)
                return r;

        r = FUNC5();
        if (r < 0)
                return r;

        r = FUNC9();
        if (r < 0)
                return r;

        r = FUNC4();
        if (r < 0)
                return r;

        r = FUNC7();
        if (r < 0)
                return r;

        r = FUNC8();
        if (r < 0)
                return r;

        return 0;
}