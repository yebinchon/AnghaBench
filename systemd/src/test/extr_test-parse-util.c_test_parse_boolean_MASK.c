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
        FUNC0(FUNC1("1") == 1);
        FUNC0(FUNC1("y") == 1);
        FUNC0(FUNC1("Y") == 1);
        FUNC0(FUNC1("yes") == 1);
        FUNC0(FUNC1("YES") == 1);
        FUNC0(FUNC1("true") == 1);
        FUNC0(FUNC1("TRUE") == 1);
        FUNC0(FUNC1("on") == 1);
        FUNC0(FUNC1("ON") == 1);

        FUNC0(FUNC1("0") == 0);
        FUNC0(FUNC1("n") == 0);
        FUNC0(FUNC1("N") == 0);
        FUNC0(FUNC1("no") == 0);
        FUNC0(FUNC1("NO") == 0);
        FUNC0(FUNC1("false") == 0);
        FUNC0(FUNC1("FALSE") == 0);
        FUNC0(FUNC1("off") == 0);
        FUNC0(FUNC1("OFF") == 0);

        FUNC0(FUNC1("garbage") < 0);
        FUNC0(FUNC1("") < 0);
        FUNC0(FUNC1("full") < 0);
}