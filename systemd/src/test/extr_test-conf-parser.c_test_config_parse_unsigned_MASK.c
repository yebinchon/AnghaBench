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
        FUNC0("10241024", 10241024);
        FUNC0("1024", 1024);
        FUNC0("0", 0);

        FUNC0("99999999999999999999999999999999999999999999999999999999", 0);
        FUNC0("1G", 0);
        FUNC0("garbage", 0);
        FUNC0("1000garbage", 0);
}