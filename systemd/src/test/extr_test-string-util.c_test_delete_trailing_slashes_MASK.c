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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void) {
        char s1[] = "foobar//",
             s2[] = "foobar/",
             s3[] = "foobar",
             s4[] = "";

        FUNC0(FUNC2(FUNC1(s1, "_"), "foobar//"));
        FUNC0(FUNC2(FUNC1(s1, "/"), "foobar"));
        FUNC0(FUNC2(FUNC1(s2, "/"), "foobar"));
        FUNC0(FUNC2(FUNC1(s3, "/"), "foobar"));
        FUNC0(FUNC2(FUNC1(s4, "/"), ""));
}