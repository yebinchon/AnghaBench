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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ REG_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

DWORD FUNC2(HKEY SubKey, PWSTR Value)
{
    WCHAR Buffer[20] = { 0 };
    DWORD Len, Flags, Type;

    Len = sizeof(Buffer) - sizeof(WCHAR);
    Flags = 0;
    if (FUNC0(SubKey, Value, NULL, &Type, (BYTE*)Buffer, &Len) == ERROR_SUCCESS && Type == REG_SZ)
    {
        Flags = FUNC1(Buffer, NULL, 16);
    }

    return Flags;
}