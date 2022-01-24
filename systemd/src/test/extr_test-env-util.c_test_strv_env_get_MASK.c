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
 char** FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*) ; 

__attribute__((used)) static void FUNC4(void) {
        char **l;

        l = FUNC0("ONE_OR_TWO=1", "THREE=3", "ONE_OR_TWO=2", "FOUR=4");

        FUNC1(FUNC2(FUNC3(l, "ONE_OR_TWO"), "2"));
        FUNC1(FUNC2(FUNC3(l, "THREE"), "3"));
        FUNC1(FUNC2(FUNC3(l, "FOUR"), "4"));
}