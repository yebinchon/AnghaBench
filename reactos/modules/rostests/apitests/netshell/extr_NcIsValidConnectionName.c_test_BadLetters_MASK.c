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
typedef  int WCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/ * FUNC2 (int*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL ret;

    WCHAR buf[3] = { 0 };
    int i;

    for (i = 1; i <= 0xFFFF; ++i)
    {
        buf[0] = (WCHAR)i;
        buf[1] = buf[2] = L'\0';

        if (FUNC2(buf, L"\\/:\t*? <>|\"") != NULL)
        {
            ret = FUNC1(buf);
            FUNC0(ret == FALSE, "Expected %s (%i) to fail.\n", FUNC3(buf), i);

            /* How about two of a kind? */
            buf[1] = (WCHAR)i;
            ret = FUNC1(buf);
            FUNC0(ret == FALSE, "Expected %s (%i) to fail.\n", FUNC3(buf), i);

            /* And something (bad) combined with a space? */
            buf[1] = L' ';
            ret = FUNC1(buf);
            FUNC0(ret == FALSE, "Expected %s (%i) to fail.\n", FUNC3(buf), i);


            /* Something bad combined with a letter */
            buf[1] = L'a';
            ret = FUNC1(buf);
            if ((WCHAR)i == L' ')
                FUNC0(ret == TRUE, "Expected %s (%i) to succeed.\n", FUNC3(buf), i);
            else
                FUNC0(ret == FALSE, "Expected %s (%i) to fail.\n", FUNC3(buf), i);
        }
        else
        {
            ret = FUNC1(buf);
            FUNC0(ret == TRUE, "Expected %s (%i) to succeed.\n", FUNC3(buf), i);

            buf[1] = (WCHAR)i;
            ret = FUNC1(buf);
            FUNC0(ret == TRUE, "Expected %s (%i) to succeed.\n", FUNC3(buf), i);

            buf[1] = L'a';
            ret = FUNC1(buf);
            FUNC0(ret == TRUE, "Expected %s (%i) to succeed.\n", FUNC3(buf), i);

            buf[1] = L' ';
            ret = FUNC1(buf);
            FUNC0(ret == TRUE, "Expected %s (%i) to succeed.\n", FUNC3(buf), i);
        }
    }
}