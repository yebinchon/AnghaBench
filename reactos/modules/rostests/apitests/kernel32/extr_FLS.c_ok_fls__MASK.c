#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* FlsCallback; } ;
struct TYPE_5__ {scalar_t__ FlsData; } ;
struct TYPE_4__ {scalar_t__ lpCallback; int /*<<< orphan*/ * Unknown; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PFLS_CALLBACK_INFO ;
typedef  scalar_t__ PFLS_CALLBACK_FUNCTION ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FlsCallback3 ; 
 TYPE_3__* FUNC0 () ; 
 TYPE_2__* FUNC1 () ; 
 scalar_t__ WINVER_2003 ; 
 int /*<<< orphan*/  g_FlsExcept3 ; 
 scalar_t__ g_WinVersion ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(DWORD dwIndex, PVOID pValue, PFLS_CALLBACK_FUNCTION lpCallback)
{
    PFLS_CALLBACK_INFO FlsCallback;
    PVOID* FlsData;
    PVOID gotValue;

    FlsCallback = (PFLS_CALLBACK_INFO)FUNC0()->FlsCallback;
    FlsData = (PVOID*)FUNC1()->FlsData;

    FUNC3(FlsData != NULL, "Expected FlsData\n");
    FUNC3(FlsCallback != NULL, "Expected FlsCallback\n");

    if (FlsData == NULL || FlsCallback == NULL)
    {
        FUNC4("Unable to continue test\n");
        return;
    }

    if (g_WinVersion <= WINVER_2003)
    {
        FUNC3(FUNC0()->FlsCallback[dwIndex] == lpCallback,
                    "Expected NtCurrentPeb()->FlsCallback[%lu] to be %p, was %p\n",
                    dwIndex,
                    lpCallback,
                    FUNC0()->FlsCallback[dwIndex]);
    }
    else
    {
        FUNC3(FlsCallback[dwIndex].lpCallback == lpCallback,
                    "Expected FlsCallback[%lu].lpCallback to be %p, was %p\n",
                    dwIndex,
                    lpCallback,
                    FlsCallback[dwIndex].lpCallback);
        if (lpCallback != &FlsCallback3 || !g_FlsExcept3)
        {
            FUNC3(FlsCallback[dwIndex].Unknown == NULL,
                        "Expected FlsCallback[%lu].Unknown to be %p, was %p\n",
                        dwIndex,
                        NULL,
                        FlsCallback[dwIndex].Unknown);
        }
    }
    FUNC3(FlsData[dwIndex + 2] == pValue,
                "Expected FlsData[%lu + 2] to be %p, was %p\n",
                dwIndex,
                pValue,
                FlsData[dwIndex + 2]);

    gotValue = FUNC2(dwIndex);
    FUNC3(gotValue == pValue, "Expected FlsGetValue(%lu) to be %p, was %p\n", dwIndex, pValue, gotValue);
}