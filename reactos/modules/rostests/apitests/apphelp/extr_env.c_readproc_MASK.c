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
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static BOOL FUNC3(HANDLE proc, LPVOID address, PVOID target, DWORD size)
{
    SIZE_T dwRead;
    if (FUNC1(proc, address, target, size, &dwRead))
    {
        FUNC2(dwRead == size, "Expected to read %u bytes, got %lu\n", size, dwRead);
        return dwRead == size;
    }
    FUNC2(0, "RPM failed with %u\n", FUNC0());
    return FALSE;
}