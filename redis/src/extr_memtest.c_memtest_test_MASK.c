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
 int /*<<< orphan*/  ULONG_ONEZERO ; 
 unsigned long ULONG_ZEROONE ; 
 scalar_t__ FUNC0 (unsigned long*,size_t,int) ; 
 scalar_t__ FUNC1 (unsigned long*,size_t,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,size_t,int /*<<< orphan*/ ,unsigned long,char,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(unsigned long *m, size_t bytes, int passes, int interactive) {
    int pass = 0;
    int errors = 0;

    while (pass != passes) {
        pass++;

        if (interactive) FUNC5("Addressing test",pass);
        errors += FUNC0(m,bytes,interactive);
        if (interactive) FUNC4();

        if (interactive) FUNC5("Random fill",pass);
        FUNC2(m,bytes,interactive);
        if (interactive) FUNC4();
        errors += FUNC1(m,bytes,pass,4,interactive);

        if (interactive) FUNC5("Solid fill",pass);
        FUNC3(m,bytes,0,(unsigned long)-1,'S',interactive);
        if (interactive) FUNC4();
        errors += FUNC1(m,bytes,pass,4,interactive);

        if (interactive) FUNC5("Checkerboard fill",pass);
        FUNC3(m,bytes,ULONG_ONEZERO,ULONG_ZEROONE,'C',interactive);
        if (interactive) FUNC4();
        errors += FUNC1(m,bytes,pass,4,interactive);
    }
    return errors;
}