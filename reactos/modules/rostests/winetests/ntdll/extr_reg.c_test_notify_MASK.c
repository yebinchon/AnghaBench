#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ObjectName; int /*<<< orphan*/ * RootDirectory; } ;
typedef  TYPE_1__ OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_NOTIFY_CHANGE_NAME ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_TIMEOUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  winetestpath ; 

__attribute__((used)) static void FUNC14(void)
{
    OBJECT_ATTRIBUTES attr;
    LARGE_INTEGER timeout;
    IO_STATUS_BLOCK iosb;
    UNICODE_STRING str;
    HANDLE key, events[2], subkey;
    NTSTATUS status;

    FUNC2(&attr, &winetestpath, 0, 0, 0);
    status = FUNC9(&key, KEY_ALL_ACCESS, &attr);
    FUNC3(status == STATUS_SUCCESS, "NtOpenKey Failed: 0x%08x\n", status);

    events[0] = FUNC0(NULL, FALSE, TRUE, NULL);
    FUNC3(events[0] != NULL, "CreateEvent failed: %u\n", FUNC1());
    events[1] = FUNC0(NULL, FALSE, TRUE, NULL);
    FUNC3(events[1] != NULL, "CreateEvent failed: %u\n", FUNC1());

    status = FUNC7(key, events[0], NULL, NULL, &iosb, REG_NOTIFY_CHANGE_NAME, FALSE, NULL, 0, TRUE);
    FUNC3(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);
    status = FUNC7(key, events[1], NULL, NULL, &iosb, REG_NOTIFY_CHANGE_NAME, FALSE, NULL, 0, TRUE);
    FUNC3(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

    timeout.QuadPart = 0;
    status = FUNC10(events[0], FALSE, &timeout);
    FUNC3(status == STATUS_TIMEOUT, "NtWaitForSingleObject returned %x\n", status);
    status = FUNC10(events[1], FALSE, &timeout);
    FUNC3(status == STATUS_TIMEOUT, "NtWaitForSingleObject returned %x\n", status);

    attr.RootDirectory = key;
    attr.ObjectName = &str;

    FUNC11(&str, "test_subkey");
    status = FUNC5(&subkey, GENERIC_ALL, &attr, 0, 0, 0, 0);
    FUNC3(status == STATUS_SUCCESS, "NtCreateKey failed: 0x%08x\n", status);
    FUNC12(&str);

    status = FUNC10(events[0], FALSE, &timeout);
    FUNC3(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);
    status = FUNC10(events[1], FALSE, &timeout);
    FUNC3(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

    status = FUNC7(key, events[0], NULL, NULL, &iosb, 0, FALSE, NULL, 0, TRUE);
    FUNC3(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);
    status = FUNC7(key, events[1], NULL, NULL, &iosb, 0, FALSE, NULL, 0, TRUE);
    FUNC3(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

    status = FUNC6(subkey);
    FUNC3(status == STATUS_SUCCESS, "NtDeleteSubkey failed: %x\n", status);

    status = FUNC10(events[0], FALSE, &timeout);
    FUNC3(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);
    status = FUNC10(events[1], FALSE, &timeout);
    FUNC3(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

    FUNC4(subkey);

    status = FUNC7(key, events[0], NULL, NULL, &iosb, 0, FALSE, NULL, 0, TRUE);
    FUNC3(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);
    status = FUNC7(key, events[1], NULL, NULL, &iosb, 0, FALSE, NULL, 0, TRUE);
    FUNC3(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

    FUNC4(key);

    status = FUNC10(events[0], FALSE, &timeout);
    FUNC3(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);
    status = FUNC10(events[1], FALSE, &timeout);
    FUNC3(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

    if (&pNtNotifyChangeMultipleKeys)
    {
        FUNC2(&attr, &winetestpath, 0, 0, 0);
        status = FUNC9(&key, KEY_ALL_ACCESS, &attr);
        FUNC3(status == STATUS_SUCCESS, "NtOpenKey Failed: 0x%08x\n", status);

        status = FUNC8(key, 0, NULL, events[0], NULL, NULL, &iosb, REG_NOTIFY_CHANGE_NAME, FALSE, NULL, 0, TRUE);
        FUNC3(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

        timeout.QuadPart = 0;
        status = FUNC10(events[0], FALSE, &timeout);
        FUNC3(status == STATUS_TIMEOUT, "NtWaitForSingleObject returned %x\n", status);

        attr.RootDirectory = key;
        attr.ObjectName = &str;
        FUNC11(&str, "test_subkey");
        status = FUNC5(&subkey, GENERIC_ALL, &attr, 0, 0, 0, 0);
        FUNC3(status == STATUS_SUCCESS, "NtCreateKey failed: 0x%08x\n", status);
        FUNC12(&str);

        status = FUNC10(events[0], FALSE, &timeout);
        FUNC3(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

        status = FUNC6(subkey);
        FUNC3(status == STATUS_SUCCESS, "NtDeleteSubkey failed: %x\n", status);
        FUNC4(subkey);
        FUNC4(key);
    }
    else
    {
        FUNC13("NtNotifyChangeMultipleKeys not available\n");
    }

    FUNC4(events[0]);
    FUNC4(events[1]);
}