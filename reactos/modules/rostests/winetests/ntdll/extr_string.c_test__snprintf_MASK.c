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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(void)
{
    const char *origstring = "XXXXXXXXXXXX";
    const char *teststring = "hello world";
    char buffer[32];
    int res;

    res = FUNC3(NULL, 0, teststring);
    FUNC2(res == FUNC1(teststring) || FUNC0(res == -1) /* <= w2k */,
       "_snprintf returned %d, expected %d.\n", res, FUNC1(teststring));

    if (res != -1)
    {
        res = FUNC3(NULL, 1, teststring);
        FUNC2(res == FUNC1(teststring) /* WinXP */ || res < 0 /* Vista and greater */,
           "_snprintf returned %d, expected %d or < 0.\n", res, FUNC1(teststring));
    }
    res = FUNC3(buffer, FUNC6(teststring) - 1, teststring);
    FUNC2(res < 0, "_snprintf returned %d, expected < 0.\n", res);

    FUNC5(buffer,  origstring);
    res = FUNC3(buffer, FUNC6(teststring), teststring);
    FUNC2(res == FUNC1(teststring), "_snprintf returned %d, expected %d.\n", res, FUNC1(teststring));
    FUNC2(!FUNC4(buffer, "hello worldX"), "_snprintf returned buffer '%s', expected 'hello worldX'.\n", buffer);

    FUNC5(buffer, origstring);
    res = FUNC3(buffer, FUNC6(teststring) + 1, teststring);
    FUNC2(res == FUNC1(teststring), "_snprintf returned %d, expected %d.\n", res, FUNC1(teststring));
    FUNC2(!FUNC4(buffer, teststring), "_snprintf returned buffer '%s', expected '%s'.\n", buffer, teststring);
}