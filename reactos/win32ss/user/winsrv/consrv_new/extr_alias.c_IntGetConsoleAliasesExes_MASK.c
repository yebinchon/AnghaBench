#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_3__ {struct TYPE_3__* Next; int /*<<< orphan*/  lpExeName; } ;
typedef  TYPE_1__* PALIAS_HEADER ;
typedef  int* LPWSTR ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

UINT
FUNC3(PALIAS_HEADER RootHeader, LPWSTR TargetBuffer, UINT TargetBufferSize)
{
    UINT Offset = 0;
    UINT Length;

    TargetBufferSize /= sizeof(WCHAR);
    while (RootHeader)
    {
        Length = FUNC2(RootHeader->lpExeName) + 1;
        if (TargetBufferSize > Offset + Length)
        {
            FUNC1(&TargetBuffer[Offset], RootHeader->lpExeName);
            Offset += Length;
        }
        else
        {
            break;
        }
        RootHeader = RootHeader->Next;
    }
    Length = FUNC0(Offset+1, TargetBufferSize);
    TargetBuffer[Length] = L'\0';
    return Length * sizeof(WCHAR);
}