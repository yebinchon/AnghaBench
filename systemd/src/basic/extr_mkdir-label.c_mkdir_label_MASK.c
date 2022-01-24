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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 

int FUNC5(const char *path, mode_t mode) {
        int r;

        FUNC0(path);

        r = FUNC2(path, S_IFDIR);
        if (r < 0)
                return r;

        r = FUNC4(path, mode);
        FUNC1();
        if (r < 0)
                return r;

        return FUNC3(path, 0);
}