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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("1024", 1024);
        FUNC0("2K", 2000);
        FUNC0("10M", 10 * 1000 * 1000);
        FUNC0("1G", 1 * 1000 * 1000 * 1000);
        FUNC0("0G", 0);
        FUNC0("0", 0);

        FUNC0("-982", 0);
        FUNC0("49874444198739873000000G", 0);
        FUNC0("garbage", 0);
}