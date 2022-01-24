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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static WCHAR *FUNC9( BYTE *buffer, UINT size )
{
    static const WCHAR tstW[] = {'t','s','t',0};
    WCHAR path[MAX_PATH], filename[MAX_PATH], *ret;
    HANDLE handle;
    DWORD count;

    FUNC4(MAX_PATH, path);
    FUNC3(path, tstW, 0, filename);

    handle = FUNC1(filename, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
    if (handle == INVALID_HANDLE_VALUE) return NULL;

    FUNC6(handle, buffer, size, &count, NULL);
    FUNC0( handle );

    ret = FUNC5(FUNC2(), 0, (FUNC8(filename) + 1) * sizeof(WCHAR));
    FUNC7(ret, filename);
    return ret;
}