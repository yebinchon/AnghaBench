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
typedef  scalar_t__ HANDLE ;
typedef  size_t DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC5 (scalar_t__,unsigned char const*,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  temp_path ; 

BOOL FUNC7(char* filename, const unsigned char* data, size_t len)
{
    HANDLE hFile;
    BOOL bRet;
    DWORD dwWritten;

    if (!FUNC4(temp_path, "mpa", 0, filename))
    {
        FUNC6(0, "GetTempFileNameA failed %lu\n", FUNC3());
        return FALSE;
    }

    hFile = FUNC1(filename, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC6(0, "CreateFileA failed %lu\n", FUNC3());
        FUNC2(filename);
        return FALSE;
    }

    bRet = FUNC5(hFile, data, len, &dwWritten, NULL);
    FUNC0(hFile);
    bRet = bRet && (dwWritten == len);

    if (!bRet)
    {
        FUNC6(0, "WriteFile failed %lu\n", FUNC3());
        FUNC2(filename);
    }

    return bRet;
}