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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ SHORT ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  SYMBOLIC_LINK_QUERY ; 
 scalar_t__ UNICODE_NULL ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,char*,int) ; 

BOOLEAN
FUNC9(SHORT DriveLetter)
{
    WCHAR Path[8];
    NTSTATUS Status;
    BOOLEAN IsGlobal;
    UNICODE_STRING PathU;
    HANDLE SymbolicLinkHandle;
    OBJECT_ATTRIBUTES ObjectAttributes;

    /* Setup our drive path */
    FUNC8(Path, L"\\??\\X:", (sizeof(L"\\??\\X:") / sizeof(WCHAR)));
    Path[4] = DriveLetter + L'A';
    Path[6] = UNICODE_NULL;

    /* Prepare everything to open the link */
    FUNC7(&PathU, Path);
    FUNC2(&ObjectAttributes,
                               &PathU,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);

    /* Impersonate the caller */
    if (!FUNC0(NULL))
    {
        return FALSE;
    }

    /* Open our drive letter */
    Status = FUNC6(&SymbolicLinkHandle,
                                      SYMBOLIC_LINK_QUERY,
                                      &ObjectAttributes);

    FUNC1();

    if (!FUNC4(Status))
    {
        return FALSE;
    }

    /* Check whether it's global */
    Status = FUNC3(SymbolicLinkHandle, &IsGlobal);
    FUNC5(SymbolicLinkHandle);

    if (!FUNC4(Status))
    {
        return FALSE;
    }

    return IsGlobal;
}