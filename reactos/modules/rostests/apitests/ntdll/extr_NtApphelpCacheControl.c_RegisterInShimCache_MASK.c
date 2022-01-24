#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szPath ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ApphelpCacheServiceUpdate ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN FUNC7(BOOLEAN WithMapping)
{
    WCHAR szPath[MAX_PATH];
    UNICODE_STRING ntPath;
    BOOLEAN Result;
    NTSTATUS Status;
    FUNC2(NULL, szPath, sizeof(szPath) / sizeof(szPath[0]));
    Result = FUNC4(szPath, &ntPath, NULL, NULL);
    if (!Result)
    {
        FUNC1("RegisterInShimCache: RtlDosPathNameToNtPathName_U failed\n");
        return FALSE;
    }

    Status = FUNC0(&ntPath, WithMapping, ApphelpCacheServiceUpdate);
    if (!FUNC3(Status))
    {
        FUNC1("RegisterInShimCache: CallCacheControl failed\n");
        FUNC5(FUNC6(), 0, ntPath.Buffer);
        return FALSE;
    }
    FUNC5(FUNC6(), 0, ntPath.Buffer);
    return TRUE;
}