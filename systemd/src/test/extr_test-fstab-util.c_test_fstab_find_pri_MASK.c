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
 int FUNC1 (char*,int*) ; 

__attribute__((used)) static void FUNC2(void) {
        int pri = -1;

        FUNC0(FUNC1("pri", &pri) == 0);
        FUNC0(pri == -1);

        FUNC0(FUNC1("pri=11", &pri) == 1);
        FUNC0(pri == 11);

        FUNC0(FUNC1("opt,pri=12,opt", &pri) == 1);
        FUNC0(pri == 12);

        FUNC0(FUNC1("opt,opt,pri=12,pri=13", &pri) == 1);
        FUNC0(pri == 13);
}