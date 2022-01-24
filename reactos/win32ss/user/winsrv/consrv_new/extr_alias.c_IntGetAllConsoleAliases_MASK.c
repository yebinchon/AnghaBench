#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_5__ {struct TYPE_5__* Next; int /*<<< orphan*/  lpTarget; int /*<<< orphan*/  lpSource; } ;
struct TYPE_4__ {TYPE_2__* Data; } ;
typedef  TYPE_1__* PALIAS_HEADER ;
typedef  TYPE_2__* PALIAS_ENTRY ;
typedef  int* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

UINT
FUNC2(PALIAS_HEADER Header, LPWSTR TargetBuffer, UINT TargetBufferLength)
{
    PALIAS_ENTRY CurEntry = Header->Data;
    UINT Offset = 0;
    UINT SrcLength, TargetLength;

    TargetBufferLength /= sizeof(WCHAR);
    while (CurEntry)
    {
        SrcLength = FUNC1(CurEntry->lpSource) + 1;
        TargetLength = FUNC1(CurEntry->lpTarget) + 1;
        if (Offset + TargetLength + SrcLength >= TargetBufferLength)
            break;

        FUNC0(&TargetBuffer[Offset], CurEntry->lpSource);
        Offset += SrcLength;
        TargetBuffer[Offset] = L'=';
        FUNC0(&TargetBuffer[Offset], CurEntry->lpTarget);
        Offset += TargetLength;

        CurEntry = CurEntry->Next;
    }
    TargetBuffer[Offset] = L'\0';
    return Offset * sizeof(WCHAR);
}