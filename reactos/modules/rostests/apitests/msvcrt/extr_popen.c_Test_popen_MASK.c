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
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7()
{
    FILE * f;
    int r;
    char str[20];

    /* NOTE: We suppose that the NT test installation has an accessible cmd.exe */
    f = FUNC3("cmd.exe /C \"echo Hallo\"", "r");
    FUNC6(f != NULL, "_popen returns NULL!\n");

    FUNC0(str, sizeof(str));
    FUNC4(str, sizeof(str) - 1, f);
    FUNC6(FUNC5(str, "Hallo\n") == 0, "fgets: expected \"Hallo\", got %s.\n", str);

    r = FUNC2(f);
    FUNC6(r == 0, "_pclose: expected 0, got %i.\n", r);
    r = *FUNC1();
    FUNC6(r == 0, "_errno: expected 0, got %i,\n", r);
}