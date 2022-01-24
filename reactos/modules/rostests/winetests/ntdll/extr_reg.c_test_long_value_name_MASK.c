#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int MaximumLength; int Length; char* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  KeyValueBasicInformation ; 
 int /*<<< orphan*/  REG_DWORD ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  winetestpath ; 

__attribute__((used)) static void FUNC11(void)
{
    HANDLE key;
    NTSTATUS status, expected;
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING ValName;
    DWORD i;

    FUNC2(&attr, &winetestpath, 0, 0, 0);
    status = FUNC7(&key, KEY_WRITE|KEY_READ, &attr);
    FUNC4(status == STATUS_SUCCESS, "NtOpenKey Failed: 0x%08x\n", status);

    ValName.MaximumLength = 0xfffc;
    ValName.Length = ValName.MaximumLength - sizeof(WCHAR);
    ValName.Buffer = FUNC1(FUNC0(), 0, ValName.MaximumLength);
    for (i = 0; i < ValName.Length / sizeof(WCHAR); i++)
        ValName.Buffer[i] = 'a';
    ValName.Buffer[i] = 0;

    status = FUNC6(key, &ValName);
    FUNC4(status == STATUS_OBJECT_NAME_NOT_FOUND, "NtDeleteValueKey with nonexistent long value name returned 0x%08x\n", status);
    status = FUNC9(key, &ValName, 0, REG_DWORD, &i, sizeof(i));
    FUNC4(status == STATUS_INVALID_PARAMETER || FUNC3(status == STATUS_SUCCESS) /* nt4 */,
       "NtSetValueKey with long value name returned 0x%08x\n", status);
    expected = (status == STATUS_SUCCESS) ? STATUS_SUCCESS : STATUS_OBJECT_NAME_NOT_FOUND;
    status = FUNC6(key, &ValName);
    FUNC4(status == expected, "NtDeleteValueKey with long value name returned 0x%08x\n", status);

    status = FUNC8(key, &ValName, KeyValueBasicInformation, NULL, 0, &i);
    FUNC4(status == STATUS_OBJECT_NAME_NOT_FOUND, "NtQueryValueKey with nonexistent long value name returned 0x%08x\n", status);

    FUNC10(&ValName);
    FUNC5(key);
}