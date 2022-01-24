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
 int /*<<< orphan*/  WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void) {
        char *s, input[] = "   hello, waldo.   abc";

        s = FUNC1(input, WHITESPACE);
        FUNC0(FUNC2(s, "hello,waldo.abc"));
        FUNC0(s == input);
}