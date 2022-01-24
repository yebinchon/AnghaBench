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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ AddReg ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ DelReg ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC4(PCHAR FileName)
{
    HINF hInf;
    ULONG ErrorLine;

    /* Load inf file from install media. */
    if (FUNC2(&hInf, FileName, 0, &ErrorLine) != 0)
    {
        FUNC0("InfHostOpenFile(%s) failed\n", FileName);
        return FALSE;
    }

    if (!FUNC3(hInf, (PWCHAR)DelReg, TRUE))
    {
        FUNC0("registry_callback() for DelReg failed\n");
        FUNC1(hInf);
        return FALSE;
    }

    if (!FUNC3(hInf, (PWCHAR)AddReg, FALSE))
    {
        FUNC0("registry_callback() for AddReg failed\n");
        FUNC1(hInf);
        return FALSE;
    }

    FUNC1(hInf);
    return TRUE;
}