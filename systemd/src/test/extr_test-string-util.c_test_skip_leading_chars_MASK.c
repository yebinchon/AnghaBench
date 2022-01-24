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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void) {
        char input1[] = " \n \r k \n \r ",
                input2[] = "kkkkthiskkkiskkkaktestkkk",
                input3[] = "abcdef";

        FUNC0(FUNC2(FUNC1(input1, WHITESPACE), "k \n \r "));
        FUNC0(FUNC2(FUNC1(input2, "k"), "thiskkkiskkkaktestkkk"));
        FUNC0(FUNC2(FUNC1(input2, "tk"), "hiskkkiskkkaktestkkk"));
        FUNC0(FUNC2(FUNC1(input3, WHITESPACE), "abcdef"));
        FUNC0(FUNC2(FUNC1(input3, "bcaef"), "def"));
}