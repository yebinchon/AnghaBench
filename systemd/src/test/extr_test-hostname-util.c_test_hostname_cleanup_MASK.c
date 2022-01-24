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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(void) {
        char *s;

        s = FUNC3("foobar");
        FUNC0(FUNC4(FUNC1(s), "foobar"));
        s = FUNC3("foobar.com");
        FUNC0(FUNC4(FUNC1(s), "foobar.com"));
        s = FUNC3("foobar.com.");
        FUNC0(FUNC4(FUNC1(s), "foobar.com"));
        s = FUNC3("foo-bar.-com-.");
        FUNC0(FUNC4(FUNC1(s), "foo-bar.com"));
        s = FUNC3("foo-bar-.-com-.");
        FUNC0(FUNC4(FUNC1(s), "foo-bar--com"));
        s = FUNC3("--foo-bar.-com");
        FUNC0(FUNC4(FUNC1(s), "foo-bar.com"));
        s = FUNC3("fooBAR");
        FUNC0(FUNC4(FUNC1(s), "fooBAR"));
        s = FUNC3("fooBAR.com");
        FUNC0(FUNC4(FUNC1(s), "fooBAR.com"));
        s = FUNC3("fooBAR.");
        FUNC0(FUNC4(FUNC1(s), "fooBAR"));
        s = FUNC3("fooBAR.com.");
        FUNC0(FUNC4(FUNC1(s), "fooBAR.com"));
        s = FUNC3("fööbar");
        FUNC0(FUNC4(FUNC1(s), "fbar"));
        s = FUNC3("");
        FUNC0(FUNC2(FUNC1(s)));
        s = FUNC3(".");
        FUNC0(FUNC2(FUNC1(s)));
        s = FUNC3("..");
        FUNC0(FUNC2(FUNC1(s)));
        s = FUNC3("foobar.");
        FUNC0(FUNC4(FUNC1(s), "foobar"));
        s = FUNC3(".foobar");
        FUNC0(FUNC4(FUNC1(s), "foobar"));
        s = FUNC3("foo..bar");
        FUNC0(FUNC4(FUNC1(s), "foo.bar"));
        s = FUNC3("foo.bar..");
        FUNC0(FUNC4(FUNC1(s), "foo.bar"));
        s = FUNC3("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        FUNC0(FUNC4(FUNC1(s), "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"));
        s = FUNC3("xxxx........xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        FUNC0(FUNC4(FUNC1(s), "xxxx.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"));
}