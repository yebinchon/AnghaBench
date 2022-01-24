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
typedef  int USHORT ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG_PTR ;
typedef  int ULONG ;
typedef  int* PWSTR ;
typedef  int* PWCHAR ;
typedef  int* PUSHORT ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOLEAN
FUNC4(
    PWSTR AtomName,
    PUSHORT AtomValue)
{
    UNICODE_STRING AtomString;
    ULONG LongValue;
    USHORT LoValue;
    PWCHAR p;

    FUNC1("RtlpCheckIntegerAtom(AtomName '%S' AtomValue %p)\n",
           AtomName, AtomValue);

    if (!((ULONG_PTR)AtomName & 0xFFFF0000))
    {
        LoValue = (USHORT)((ULONG_PTR)AtomName & 0xFFFF);

        if (LoValue == 0)
            LoValue = 0xC000;

        if (AtomValue != NULL)
            *AtomValue = LoValue;

        return TRUE;
    }

    /*
     * AtomName cannot be NULL because this
     * case was caught by the previous test.
     */
    FUNC0(AtomName != NULL);

    if (*AtomName != L'#')
        return FALSE;

    p = AtomName;
    p++;
    while (*p)
    {
        if ((*p < L'0') || (*p > L'9'))
            return FALSE;
        p++;
    }

    p = AtomName;
    p++;
    FUNC2(&AtomString, p);

    FUNC1("AtomString: %wZ\n", &AtomString);

    FUNC3(&AtomString, 10, &LongValue);

    FUNC1("LongValue: %lu\n", LongValue);

    *AtomValue = (USHORT)(LongValue & 0x0000FFFF);

    return TRUE;
}