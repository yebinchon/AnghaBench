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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int LPWSTR ;
typedef  int LPCWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_FILE_EXISTS ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SHARING_VIOLATION ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int FUNC7 (int,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*) ; 
 int FUNC9 (int) ; 

UINT FUNC10( LPWSTR path, LPCWSTR suffix )
{
    static const WCHAR szInstaller[] = {
        '\\','I','n','s','t','a','l','l','e','r','\\',0};
    static const WCHAR fmt[] = {'%','x',0};
    DWORD time, len, i, offset;
    HANDLE handle;

    time = FUNC4();
    FUNC5( path, MAX_PATH );
    FUNC8( path, szInstaller );
    FUNC1( path, NULL );

    len = FUNC9(path);
    for (i = 0; i < 0x10000; i++)
    {
        offset = FUNC7( path + len, MAX_PATH - len, fmt, (time + i) & 0xffff );
        FUNC6( path + len + offset, suffix, (FUNC9( suffix ) + 1) * sizeof(WCHAR) );
        handle = FUNC2( path, GENERIC_WRITE, 0, NULL,
                              CREATE_NEW, FILE_ATTRIBUTE_NORMAL, 0 );
        if (handle != INVALID_HANDLE_VALUE)
        {
            FUNC0(handle);
            break;
        }
        if (FUNC3() != ERROR_FILE_EXISTS &&
            FUNC3() != ERROR_SHARING_VIOLATION)
            return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}