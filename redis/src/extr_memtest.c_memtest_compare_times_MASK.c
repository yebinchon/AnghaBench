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
 scalar_t__ FUNC0 (unsigned long*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int FUNC3(unsigned long *m, size_t bytes, int pass, int times,
                          int interactive)
{
    int j;
    int errors = 0;

    for (j = 0; j < times; j++) {
        if (interactive) FUNC2("Compare",pass);
        errors += FUNC0(m,bytes,interactive);
        if (interactive) FUNC1();
    }
    return errors;
}