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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 unsigned int MAX_ERRORS ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (void**,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (void**,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (unsigned *pc, const char *level, const char *func,
                     const char *fmt, va_list ap)
{
#ifdef HAVE_BACKTRACE
    const size_t framec = 5;
    void *framev[framec];

    backtrace (framev, framec);
#endif
    FUNC3 (stderr);
    if (*pc < MAX_ERRORS)
    {
        (*pc)++;
        FUNC4 (stderr, "%s: call to %s(", level, func);
        FUNC7 (stderr, fmt, ap);
        FUNC5 (")\n", stderr);
        FUNC2 (stderr);
#ifdef HAVE_BACKTRACE
        backtrace_symbols_fd (framev + 2, framec - 2, STDERR_FILENO);
#endif
    }
    FUNC6 (stderr);
}