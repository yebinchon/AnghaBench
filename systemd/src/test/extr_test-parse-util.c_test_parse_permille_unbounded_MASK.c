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
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("1001‰") == 1001);
        FUNC0(FUNC1("4000‰") == 4000);
        FUNC0(FUNC1("2147483647‰") == 2147483647);
        FUNC0(FUNC1("2147483648‰") == -ERANGE);
        FUNC0(FUNC1("4294967295‰") == -ERANGE);
        FUNC0(FUNC1("4294967296‰") == -ERANGE);

        FUNC0(FUNC1("101%") == 1010);
        FUNC0(FUNC1("400%") == 4000);
        FUNC0(FUNC1("214748364.7%") == 2147483647);
        FUNC0(FUNC1("214748364.8%") == -ERANGE);
        FUNC0(FUNC1("429496729.5%") == -ERANGE);
        FUNC0(FUNC1("429496729.6%") == -ERANGE);
}