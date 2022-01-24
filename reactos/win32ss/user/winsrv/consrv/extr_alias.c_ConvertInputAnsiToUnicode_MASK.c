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
typedef  int /*<<< orphan*/  USHORT ;
struct TYPE_3__ {int /*<<< orphan*/  InputCodePage; } ;
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  scalar_t__ PVOID ;
typedef  int* PUSHORT ;
typedef  TYPE_1__* PCONSRV_CONSOLE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN
FUNC3(PCONSRV_CONSOLE Console,
                          PVOID    Source,
                          USHORT   SourceLength,
                          // BOOLEAN  IsUnicode,
                          PWCHAR*  Target,
                          PUSHORT  TargetLength)
{
    FUNC0(Source && Target && TargetLength);

    /* Use the console input CP for the conversion */
    *TargetLength = FUNC2(Console->InputCodePage, 0,
                                        Source, SourceLength,
                                        NULL, 0);
    *Target = FUNC1(0, *TargetLength * sizeof(WCHAR));
    if (*Target == NULL) return FALSE;

    FUNC2(Console->InputCodePage, 0,
                        Source, SourceLength,
                        *Target, *TargetLength);

    /* The returned Length was in number of WCHARs, convert it in bytes */
    *TargetLength *= sizeof(WCHAR);

    return TRUE;
}