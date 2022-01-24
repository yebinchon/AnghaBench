#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int MaximumLength; int /*<<< orphan*/ * Buffer; scalar_t__ Length; } ;
typedef  TYPE_1__ WCHAR ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int NTSTATUS ;
typedef  TYPE_1__* LPWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 

__attribute__((used)) static
BOOL
FUNC12(PWSTR* Environment,
                           LPWSTR lpName,
                           LPWSTR lpValue,
                           BOOL bExpand)
{
    NTSTATUS Status;
    UNICODE_STRING Name;
    UNICODE_STRING SrcValue, DstValue;
    ULONG Length;
    PVOID Buffer = NULL;
    WCHAR ShortName[MAX_PATH];

    if (bExpand)
    {
        FUNC9(&SrcValue, lpValue);

        Length = 2 * MAX_PATH * sizeof(WCHAR);

        DstValue.Length = 0;
        DstValue.MaximumLength = Length;
        DstValue.Buffer = Buffer = FUNC5(LPTR, Length);
        if (DstValue.Buffer == NULL)
        {
            FUNC2("LocalAlloc() failed\n");
            return FALSE;
        }

        Status = FUNC8(*Environment,
                                               &SrcValue,
                                               &DstValue,
                                               &Length);
        if (!FUNC7(Status))
        {
            FUNC2("RtlExpandEnvironmentStrings_U() failed (Status %lx)\n", Status);
            FUNC2("Length %lu\n", Length);

            if (Buffer)
                FUNC6(Buffer);

            return FALSE;
        }
    }
    else
    {
        FUNC9(&DstValue, lpValue);
    }

    if (!FUNC11(lpName, L"TEMP") || !FUNC11(lpName, L"TMP"))
    {
        if (FUNC4(DstValue.Buffer, ShortName, FUNC0(ShortName)))
        {
            FUNC9(&DstValue, ShortName);
        }
        else
        {
            FUNC1("GetShortPathNameW() failed for %S (Error %lu)\n", DstValue.Buffer, FUNC3());
        }

        FUNC1("Buffer: %S\n", ShortName);
    }

    FUNC9(&Name, lpName);

    FUNC1("Value: %wZ\n", &DstValue);

    Status = FUNC10(Environment,
                                       &Name,
                                       &DstValue);

    if (Buffer)
        FUNC6(Buffer);

    if (!FUNC7(Status))
    {
        FUNC2("RtlSetEnvironmentVariable() failed (Status %lx)\n", Status);
        return FALSE;
    }

    return TRUE;
}