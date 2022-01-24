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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONGLONG ;
typedef  scalar_t__* PVOID ;
typedef  scalar_t__* PUCHAR ;
typedef  int LONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__* FUNC2 (scalar_t__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

VOID
FUNC4(PVOID StartOfRun,
                 ULONGLONG CurrentLCN)
{
    PUCHAR DataRun = StartOfRun;
    LONGLONG DataRunOffset;
    ULONGLONG DataRunLength;

    if (CurrentLCN == 0)
    {
        FUNC0("Dumping data runs.\n\tData:\n\t\t");
        FUNC3(StartOfRun);
        FUNC1("\n\tRuns:\n\t\tOff\t\tLCN\t\tLength\n");
    }

    DataRun = FUNC2(DataRun, &DataRunOffset, &DataRunLength);

    if (DataRunOffset != -1)
        CurrentLCN += DataRunOffset;

    FUNC1("\t\t%I64d\t", DataRunOffset);
    if (DataRunOffset < 99999)
        FUNC1("\t");
    FUNC1("%I64u\t", CurrentLCN);
    if (CurrentLCN < 99999)
        FUNC1("\t");
    FUNC1("%I64u\n", DataRunLength);

    if (*DataRun == 0)
        FUNC1("\t\t00\n");
    else
        FUNC4(DataRun, CurrentLCN);
}