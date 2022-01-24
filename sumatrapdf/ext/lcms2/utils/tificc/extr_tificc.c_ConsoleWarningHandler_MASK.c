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
 scalar_t__ Verbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char const*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC6(const char* module, const char* fmt, va_list ap)
{
    char e[512] = { '\0' };
    if (module != NULL)
        FUNC2(FUNC3(e, module), ": ");

    FUNC5(e+FUNC4(e), fmt, ap);
    FUNC2(e, ".");
    if (Verbose) {

        FUNC1(stderr, "\nWarning");
        FUNC1(stderr, " %s\n", e);
        FUNC0(stderr);
    }
}