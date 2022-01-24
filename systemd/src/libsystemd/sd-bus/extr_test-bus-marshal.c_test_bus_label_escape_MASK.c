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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("foo123bar", "foo123bar");
        FUNC0("foo.bar", "foo_2ebar");
        FUNC0("foo_2ebar", "foo_5f2ebar");
        FUNC0("", "_");
        FUNC0("_", "_5f");
        FUNC0("1", "_31");
        FUNC0(":1", "_3a1");
}