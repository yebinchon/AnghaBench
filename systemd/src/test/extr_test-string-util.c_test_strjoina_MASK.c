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
 char* FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void) {
        char *actual;

        actual = FUNC2("", "foo", "bar");
        FUNC0(FUNC1(actual, "foobar"));

        actual = FUNC2("foo", "bar", "baz");
        FUNC0(FUNC1(actual, "foobarbaz"));

        actual = FUNC2("foo", "", "bar", "baz");
        FUNC0(FUNC1(actual, "foobarbaz"));

        actual = FUNC2("foo");
        FUNC0(FUNC1(actual, "foo"));

        actual = FUNC2(NULL);
        FUNC0(FUNC1(actual, ""));

        actual = FUNC2(NULL, "foo");
        FUNC0(FUNC1(actual, ""));

        actual = FUNC2("foo", NULL, "bar");
        FUNC0(FUNC1(actual, "foo"));
}