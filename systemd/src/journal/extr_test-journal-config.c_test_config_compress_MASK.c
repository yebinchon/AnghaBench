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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("yes", true, 111);
        FUNC0("no", false, 111);
        FUNC0("y", true, 111);
        FUNC0("n", false, 111);
        FUNC0("true", true, 111);
        FUNC0("false", false, 111);
        FUNC0("t", true, 111);
        FUNC0("f", false, 111);
        FUNC0("on", true, 111);
        FUNC0("off", false, 111);

        /* Weird size/bool overlapping case. We preserve backward compatibility instead of assuming these are byte
         * counts. */
        FUNC0("1", true, 111);
        FUNC0("0", false, 111);

        /* IEC sizing */
        FUNC0("1B", true, 1);
        FUNC0("1K", true, 1024);
        FUNC0("1M", true, 1024 * 1024);
        FUNC0("1G", true, 1024 * 1024 * 1024);

        /* Invalid Case */
        FUNC0("-1", true, 111);
        FUNC0("blah blah", true, 111);
        FUNC0("", true, (uint64_t)-1);
}