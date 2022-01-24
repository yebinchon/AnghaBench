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
 char* WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,char*) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void) {

        char *s,
                input1[] = " \n \r k \n \r ",
                input2[] = "kkkkthiskkkiskkkaktestkkk",
                input3[] = "abcdef";

        s = FUNC1(input1, WHITESPACE);
        FUNC0(FUNC2(s, " \n \r k"));
        FUNC0(s == input1);

        s = FUNC1(input2, "kt");
        FUNC0(FUNC2(s, "kkkkthiskkkiskkkaktes"));
        FUNC0(s == input2);

        s = FUNC1(input3, WHITESPACE);
        FUNC0(FUNC2(s, "abcdef"));
        FUNC0(s == input3);

        s = FUNC1(input3, "fe");
        FUNC0(FUNC2(s, "abcd"));
        FUNC0(s == input3);
}