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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("http://www.freedesktop.org/wiki/Software/systemd"));
        FUNC0(FUNC1("https://www.kernel.org/doc/Documentation/binfmt_misc.txt"));  /* dead */
        FUNC0(FUNC1("https://www.kernel.org/doc/Documentation/admin-guide/binfmt-misc.rst"));
        FUNC0(FUNC1("https://www.kernel.org/doc/html/latest/admin-guide/binfmt-misc.html"));
        FUNC0(FUNC1("file:/foo/foo"));
        FUNC0(FUNC1("man:systemd.special(7)"));
        FUNC0(FUNC1("info:bar"));

        FUNC0(!FUNC1("foo:"));
        FUNC0(!FUNC1("info:"));
        FUNC0(!FUNC1(""));
}