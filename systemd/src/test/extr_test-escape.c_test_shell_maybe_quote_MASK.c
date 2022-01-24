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
 int /*<<< orphan*/  ESCAPE_BACKSLASH ; 
 int /*<<< orphan*/  ESCAPE_POSIX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(void) {

        FUNC0("", ESCAPE_BACKSLASH, "");
        FUNC0("", ESCAPE_POSIX, "");
        FUNC0("\\", ESCAPE_BACKSLASH, "\"\\\\\"");
        FUNC0("\\", ESCAPE_POSIX, "$'\\\\'");
        FUNC0("\"", ESCAPE_BACKSLASH, "\"\\\"\"");
        FUNC0("\"", ESCAPE_POSIX, "$'\"'");
        FUNC0("foobar", ESCAPE_BACKSLASH, "foobar");
        FUNC0("foobar", ESCAPE_POSIX, "foobar");
        FUNC0("foo bar", ESCAPE_BACKSLASH, "\"foo bar\"");
        FUNC0("foo bar", ESCAPE_POSIX, "$'foo bar'");
        FUNC0("foo\tbar", ESCAPE_BACKSLASH, "\"foo\tbar\"");
        FUNC0("foo\tbar", ESCAPE_POSIX, "$'foo\\tbar'");
        FUNC0("foo\nbar", ESCAPE_BACKSLASH, "\"foo\nbar\"");
        FUNC0("foo\nbar", ESCAPE_POSIX, "$'foo\\nbar'");
        FUNC0("foo \"bar\" waldo", ESCAPE_BACKSLASH, "\"foo \\\"bar\\\" waldo\"");
        FUNC0("foo \"bar\" waldo", ESCAPE_POSIX, "$'foo \"bar\" waldo'");
        FUNC0("foo$bar", ESCAPE_BACKSLASH, "\"foo\\$bar\"");
        FUNC0("foo$bar", ESCAPE_POSIX, "$'foo$bar'");

        /* Note that current users disallow control characters, so this "test"
         * is here merely to establish current behaviour. If control characters
         * were allowed, they should be quoted, i.e. \001 should become \\001. */
        FUNC0("a\nb\001", ESCAPE_BACKSLASH, "\"a\nb\001\"");
        FUNC0("a\nb\001", ESCAPE_POSIX, "$'a\\nb\001'");

        FUNC0("foo!bar", ESCAPE_BACKSLASH, "\"foo!bar\"");
        FUNC0("foo!bar", ESCAPE_POSIX, "$'foo!bar'");
}