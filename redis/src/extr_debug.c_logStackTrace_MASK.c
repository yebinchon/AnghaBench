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
typedef  int /*<<< orphan*/  ucontext_t ;

/* Variables and functions */
 int FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ ) ; 

void FUNC7(ucontext_t *uc) {
    void *trace[101];
    int trace_size = 0, fd = FUNC4();

    if (fd == -1) return; /* If we can't log there is anything to do. */

    /* Generate the stack trace */
    trace_size = FUNC0(trace+1, 100);

    if (FUNC3(uc) != NULL) {
        char *msg1 = "EIP:\n";
        char *msg2 = "\nBacktrace:\n";
        if (FUNC6(fd,msg1,FUNC5(msg1)) == -1) {/* Avoid warning. */};
        trace[0] = FUNC3(uc);
        FUNC1(trace, 1, fd);
        if (FUNC6(fd,msg2,FUNC5(msg2)) == -1) {/* Avoid warning. */};
    }

    /* Write symbols to log file */
    FUNC1(trace+1, trace_size, fd);

    /* Cleanup */
    FUNC2(fd);
}