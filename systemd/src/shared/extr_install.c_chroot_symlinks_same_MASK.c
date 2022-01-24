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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char*,char const*) ; 

__attribute__((used)) static bool FUNC4(const char *root, const char *wd, const char *a, const char *b) {
        FUNC0(FUNC2(wd));

        /* This will give incorrect results if the paths are relative and go outside
         * of the chroot. False negatives are possible. */

        if (!root)
                root = "/";

        a = FUNC3(FUNC2(a) ? root : wd, "/", a);
        b = FUNC3(FUNC2(b) ? root : wd, "/", b);
        return FUNC1(a, b, 0);
}