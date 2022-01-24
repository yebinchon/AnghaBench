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
typedef  int /*<<< orphan*/  filename ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

PVOID FUNC7(ULONG Code)
{
    char filename[MAX_PATH], sysdir[MAX_PATH];
    HANDLE hFile;
    PVOID Data = NULL;
    FUNC3(sysdir, MAX_PATH);

    if (Code != -1)
        FUNC5(filename, sizeof(filename),  "%s\\c_%lu.nls", sysdir, Code);
    else
        FUNC5(filename, sizeof(filename),  "%s\\l_intl.nls", sysdir);

    hFile = FUNC1(filename, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    if (hFile != INVALID_HANDLE_VALUE)
    {
        DWORD dwRead;
        DWORD dwFileSize = FUNC2(hFile, NULL);
        Data = FUNC6(dwFileSize);
        FUNC4(hFile, Data, dwFileSize, &dwRead, NULL);
        FUNC0(hFile);
    }
    return Data;
}