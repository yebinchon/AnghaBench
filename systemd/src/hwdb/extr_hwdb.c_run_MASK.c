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
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,char**) ; 

__attribute__((used)) static int FUNC5(int argc, char *argv[]) {
        int r;

        FUNC2();
        FUNC1();

        r = FUNC4(argc, argv);
        if (r <= 0)
                return r;

        FUNC3();

        return FUNC0(argc, argv);
}