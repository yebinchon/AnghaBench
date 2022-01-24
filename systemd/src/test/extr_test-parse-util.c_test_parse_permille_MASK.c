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
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("") == -EINVAL);
        FUNC0(FUNC1("foo") == -EINVAL);
        FUNC0(FUNC1("0") == -EINVAL);
        FUNC0(FUNC1("50") == -EINVAL);
        FUNC0(FUNC1("100") == -EINVAL);
        FUNC0(FUNC1("-1") == -EINVAL);

        FUNC0(FUNC1("0‰") == 0);
        FUNC0(FUNC1("555‰") == 555);
        FUNC0(FUNC1("1000‰") == 1000);
        FUNC0(FUNC1("-7‰") == -ERANGE);
        FUNC0(FUNC1("1007‰") == -ERANGE);
        FUNC0(FUNC1("‰") == -EINVAL);
        FUNC0(FUNC1("‰‰") == -EINVAL);
        FUNC0(FUNC1("‰1") == -EINVAL);
        FUNC0(FUNC1("1‰‰") == -EINVAL);
        FUNC0(FUNC1("3.2‰") == -EINVAL);

        FUNC0(FUNC1("0%") == 0);
        FUNC0(FUNC1("55%") == 550);
        FUNC0(FUNC1("55.5%") == 555);
        FUNC0(FUNC1("100%") == 1000);
        FUNC0(FUNC1("-7%") == -ERANGE);
        FUNC0(FUNC1("107%") == -ERANGE);
        FUNC0(FUNC1("%") == -EINVAL);
        FUNC0(FUNC1("%%") == -EINVAL);
        FUNC0(FUNC1("%1") == -EINVAL);
        FUNC0(FUNC1("1%%") == -EINVAL);
        FUNC0(FUNC1("3.21%") == -EINVAL);
}