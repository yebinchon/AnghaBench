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
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(void) {
        char buf[40];

        FUNC0(FUNC3(FUNC1(buf, 1, ""), ""));
        FUNC0(FUNC3(FUNC1(buf, 1, "1"), ""));
        FUNC0(FUNC3(FUNC1(buf, 1, "12"), ""));

        FUNC0(FUNC3(FUNC1(buf, 2, ""), ""));
        FUNC0(FUNC3(FUNC1(buf, 2, "1"), "1"));
        FUNC0(FUNC3(FUNC1(buf, 2, "12"), "."));
        FUNC0(FUNC3(FUNC1(buf, 2, "123"), "."));

        FUNC0(FUNC3(FUNC1(buf, 3, ""), ""));
        FUNC0(FUNC3(FUNC1(buf, 3, "1"), "1"));
        FUNC0(FUNC3(FUNC1(buf, 3, "12"), "12"));
        FUNC0(FUNC3(FUNC1(buf, 3, "123"), ".."));
        FUNC0(FUNC3(FUNC1(buf, 3, "1234"), ".."));

        FUNC0(FUNC3(FUNC1(buf, 4, ""), ""));
        FUNC0(FUNC3(FUNC1(buf, 4, "1"), "1"));
        FUNC0(FUNC3(FUNC1(buf, 4, "12"), "12"));
        FUNC0(FUNC3(FUNC1(buf, 4, "123"), "123"));
        FUNC0(FUNC3(FUNC1(buf, 4, "1234"), FUNC2() ? "…" : "..."));
        FUNC0(FUNC3(FUNC1(buf, 4, "12345"), FUNC2() ? "…" : "..."));

        FUNC0(FUNC3(FUNC1(buf, 5, ""), ""));
        FUNC0(FUNC3(FUNC1(buf, 5, "1"), "1"));
        FUNC0(FUNC3(FUNC1(buf, 5, "12"), "12"));
        FUNC0(FUNC3(FUNC1(buf, 5, "123"), "123"));
        FUNC0(FUNC3(FUNC1(buf, 5, "1234"), "1234"));
        FUNC0(FUNC3(FUNC1(buf, 5, "12345"), FUNC2() ? "1…" : "1..."));
        FUNC0(FUNC3(FUNC1(buf, 5, "123456"), FUNC2() ? "1…" : "1..."));

        FUNC0(FUNC3(FUNC1(buf, 1, "\020"), ""));
        FUNC0(FUNC3(FUNC1(buf, 2, "\020"), "."));
        FUNC0(FUNC3(FUNC1(buf, 3, "\020"), ".."));
        FUNC0(FUNC3(FUNC1(buf, 4, "\020"), "…"));
        FUNC0(FUNC3(FUNC1(buf, 5, "\020"), "\\020"));

        FUNC0(FUNC3(FUNC1(buf, 5, "1234\020"), "1…"));
        FUNC0(FUNC3(FUNC1(buf, 6, "1234\020"), "12…"));
        FUNC0(FUNC3(FUNC1(buf, 7, "1234\020"), "123…"));
        FUNC0(FUNC3(FUNC1(buf, 8, "1234\020"), "1234…"));
        FUNC0(FUNC3(FUNC1(buf, 9, "1234\020"), "1234\\020"));

        FUNC0(FUNC3(FUNC1(buf, 1, "\t\n"), ""));
        FUNC0(FUNC3(FUNC1(buf, 2, "\t\n"), "."));
        FUNC0(FUNC3(FUNC1(buf, 3, "\t\n"), ".."));
        FUNC0(FUNC3(FUNC1(buf, 4, "\t\n"), "…"));
        FUNC0(FUNC3(FUNC1(buf, 5, "\t\n"), "\\t\\n"));

        FUNC0(FUNC3(FUNC1(buf, 5, "1234\t\n"), "1…"));
        FUNC0(FUNC3(FUNC1(buf, 6, "1234\t\n"), "12…"));
        FUNC0(FUNC3(FUNC1(buf, 7, "1234\t\n"), "123…"));
        FUNC0(FUNC3(FUNC1(buf, 8, "1234\t\n"), "1234…"));
        FUNC0(FUNC3(FUNC1(buf, 9, "1234\t\n"), "1234\\t\\n"));

        FUNC0(FUNC3(FUNC1(buf, 4, "x\t\020\n"), "…"));
        FUNC0(FUNC3(FUNC1(buf, 5, "x\t\020\n"), "x…"));
        FUNC0(FUNC3(FUNC1(buf, 6, "x\t\020\n"), "x…"));
        FUNC0(FUNC3(FUNC1(buf, 7, "x\t\020\n"), "x\\t…"));
        FUNC0(FUNC3(FUNC1(buf, 8, "x\t\020\n"), "x\\t…"));
        FUNC0(FUNC3(FUNC1(buf, 9, "x\t\020\n"), "x\\t…"));
        FUNC0(FUNC3(FUNC1(buf, 10, "x\t\020\n"), "x\\t\\020\\n"));

        FUNC0(FUNC3(FUNC1(buf, 6, "1\011"), "1\\t"));
        FUNC0(FUNC3(FUNC1(buf, 6, "1\020"), "1\\020"));
        FUNC0(FUNC3(FUNC1(buf, 6, "1\020x"), FUNC2() ? "1…" : "1..."));

        FUNC0(FUNC3(FUNC1(buf, 40, "1\020"), "1\\020"));
        FUNC0(FUNC3(FUNC1(buf, 40, "1\020x"), "1\\020x"));

        FUNC0(FUNC3(FUNC1(buf, 40, "\a\b\f\n\r\t\v\\\"'"), "\\a\\b\\f\\n\\r\\t\\v\\\\\\\"\\'"));
        FUNC0(FUNC3(FUNC1(buf, 6, "\a\b\f\n\r\t\v\\\"'"), FUNC2() ? "\\a…" : "\\a..."));
        FUNC0(FUNC3(FUNC1(buf, 7, "\a\b\f\n\r\t\v\\\"'"), FUNC2() ? "\\a…" : "\\a..."));
        FUNC0(FUNC3(FUNC1(buf, 8, "\a\b\f\n\r\t\v\\\"'"), FUNC2() ? "\\a\\b…" : "\\a\\b..."));

        FUNC0(FUNC3(FUNC1(buf, sizeof buf, "1\020"), "1\\020"));
        FUNC0(FUNC3(FUNC1(buf, sizeof buf, "1\020x"), "1\\020x"));
}