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
        FUNC0("777", 0777);
        FUNC0("644", 0644);

        FUNC0("-777", 0);
        FUNC0("999", 0);
        FUNC0("garbage", 0);
        FUNC0("777garbage", 0);
        FUNC0("777 garbage", 0);
}