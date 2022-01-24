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
typedef  scalar_t__ TCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__*,int*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 scalar_t__* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static
DWORD
FUNC6(TCHAR * Value, DWORD Len)
{
    DWORD Chars, i, j, Count, SrcLen, TgtLen;
    TCHAR * SrcFile, * Target, * Current;

    /* Compute the amount of chars
     * NULL char isn't relaible EOF (MULTI_SZ)
     */
    Chars = Len / sizeof(TCHAR);

    i = 0;
    Count = 0;
    Current = Value;
    /* Browse the whole string */
    while (i < Chars)
    {
        /* Jump to the next NULL (end of source) */
        for (j = i; j < Chars && Value[j] != 0; ++j);
        /* Get len & clean path */
        SrcLen = FUNC5(Current);
        SrcFile = FUNC0(Current, &SrcLen);
        /* Source file is null - likely the end of the MULTI_SZ, quit */
        if (SrcLen == 0)
        {
            break;
        }

        /* Remember position, jump to the begin of the target */
        i = j;
        ++i;
        /* Update position in MULTI_SZ */
        Current = Value + i;

        /* Jump to the next NULL (end of target) */
        for (j = i; j < Chars && Value[j] != 0; ++j);
        /* Get len & clean path */
        TgtLen = FUNC5(Current);
        Target = FUNC0(Current, &TgtLen);
        /* Remember position, jump to the begin of the next source */
        i = j;
        ++i;
        Current = Value + i;

        /* Display source */
        FUNC4(stdout, FUNC3("Source: %s\n"), SrcFile);
        /* If is accessible? Warn if not */
        if (FUNC1(SrcFile) == INVALID_FILE_ATTRIBUTES)
        {
            FUNC4(stdout, FUNC3("\t *** Source file lookup error: %d\n"), FUNC2());
        }
        /* And display target - if empty, it's for deletion, mark as it */
        FUNC4(stdout, FUNC3("Target: %s\n\n"), (FUNC5(Target) != 0 ? Target: FUNC3("DELETE")));

        /* Remember position and number of entries */
        Current = Value + i;
        ++Count;
    }

    return Count;
}