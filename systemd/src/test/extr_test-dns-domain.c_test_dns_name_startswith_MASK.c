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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("", "", true);
        FUNC0("", "xxx", false);
        FUNC0("xxx", "", true);
        FUNC0("x", "x", true);
        FUNC0("x", "y", false);
        FUNC0("x.y", "x.y", true);
        FUNC0("x.y", "y.x", false);
        FUNC0("x.y", "x", true);
        FUNC0("x.y", "X", true);
        FUNC0("x.y", "y", false);
        FUNC0("x.y", "", true);
        FUNC0("x.y", "X", true);
}