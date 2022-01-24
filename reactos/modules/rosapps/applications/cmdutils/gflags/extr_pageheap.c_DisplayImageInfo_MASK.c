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
typedef  char* PWSTR ;
typedef  void** PBOOL ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  void* BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 void* FALSE ; 
 int FLG_HEAP_PAGE_ALLOCS ; 
 int /*<<< orphan*/ * Image ; 
 char* ImageExecOptionsString ; 
 int /*<<< orphan*/  KEY_READ ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static BOOL FUNC4(HKEY HandleKey, PWSTR SubKey, PBOOL Header)
{
    LONG Ret;
    BOOL Handled;
    DWORD GlobalFlags;
    HKEY HandleSubKey;

    Ret = FUNC2(HandleKey, SubKey, 0, KEY_READ, &HandleSubKey);
    if (Ret != ERROR_SUCCESS)
    {
        FUNC3(L"DII: RegOpenKeyEx failed (%d)\n", Ret);
        return FALSE;
    }

    Handled = FALSE;
    GlobalFlags = FUNC0(HandleSubKey, L"GlobalFlag");
    if (GlobalFlags & FLG_HEAP_PAGE_ALLOCS)
    {
        DWORD PageHeapFlags;

        if (Image == NULL)
        {
            if (!*Header)
            {
                FUNC3(L"path: %s\n", ImageExecOptionsString);
                *Header = TRUE;
            }
            FUNC3(L"\t%s: page heap enabled with flags (", SubKey);
        }
        else
        {
            FUNC3(L"Page heap is enabled for %s with flags (", SubKey);
        }

        PageHeapFlags = FUNC0(HandleSubKey, L"PageHeapFlags");
        if (PageHeapFlags & 0x1)
        {
            FUNC3(L"full ");
        }

        if (PageHeapFlags & 0x2)
        {
            FUNC3(L"traces");
        }

        FUNC3(L")\n");

        Handled = TRUE;
    }

    FUNC1(HandleSubKey);

    return Handled;
}