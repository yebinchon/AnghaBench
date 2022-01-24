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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*,...) ; 

__attribute__((used)) static int FUNC6(const char* logfile, void* blackbox, int size)
{
    HANDLE hFile;
    DWORD read;
    BOOL ret;

    hFile=FUNC1(logfile, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, 0);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC5(0, "unable to open '%s'\n", logfile);
        return 0;
    }
    FUNC4(0xdeadbeef);
    ret=FUNC3(hFile, blackbox, size, &read, NULL);
    FUNC5(ret, "ReadFile failed: %d\n", FUNC2());
    FUNC5(read == size, "wrong size for '%s': read=%d\n", logfile, read);
    FUNC0(hFile);
    return 1;
}