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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(void) {
        FUNC0("pidu[111]: xxx", "pidu", "111", "xxx", 11);
        FUNC0("pidu: xxx", "pidu", NULL, "xxx", 6);
        FUNC0("pidu:  xxx", "pidu", NULL, " xxx", 6);
        FUNC0("pidu xxx", NULL, NULL, "pidu xxx", 0);
        FUNC0("   pidu xxx", NULL, NULL, "   pidu xxx", 0);
        FUNC0("", NULL, NULL, "", 0);
        FUNC0("  ", NULL, NULL, "  ", 0);
        FUNC0(":", "", NULL, "", 1);
        FUNC0(":  ", "", NULL, " ", 2);
        FUNC0(" :", "", NULL, "", 2);
        FUNC0("   pidu:", "pidu", NULL, "", 8);
        FUNC0("pidu:", "pidu", NULL, "", 5);
        FUNC0("pidu: ", "pidu", NULL, "", 6);
        FUNC0("pidu : ", NULL, NULL, "pidu : ", 0);

        FUNC1("<>", 0, 0);
        FUNC1("<>aaa", 0, 0);
        FUNC1("<aaaa>", 0, 0);
        FUNC1("<aaaa>aaa", 0, 0);
        FUNC1(" <aaaa>", 0, 0);
        FUNC1(" <aaaa>aaa", 0, 0);
        /* TODO: add test cases of valid priorities */

        return 0;
}