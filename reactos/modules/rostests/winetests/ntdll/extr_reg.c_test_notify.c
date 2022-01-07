
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {int * ObjectName; int * RootDirectory; } ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int * HANDLE ;


 int * CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int GENERIC_ALL ;
 scalar_t__ GetLastError () ;
 int InitializeObjectAttributes (TYPE_1__*,int *,int ,int ,int ) ;
 int KEY_ALL_ACCESS ;
 int REG_NOTIFY_CHANGE_NAME ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_TIMEOUT ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 int pNtClose (int *) ;
 scalar_t__ pNtCreateKey (int **,int ,TYPE_1__*,int ,int ,int ,int ) ;
 scalar_t__ pNtDeleteKey (int *) ;
 scalar_t__ pNtNotifyChangeKey (int *,int *,int *,int *,int *,int ,int ,int *,int ,int ) ;
 scalar_t__ pNtNotifyChangeMultipleKeys (int *,int ,int *,int *,int *,int *,int *,int ,int ,int *,int ,int ) ;
 scalar_t__ pNtOpenKey (int **,int ,TYPE_1__*) ;
 scalar_t__ pNtWaitForSingleObject (int *,int ,TYPE_2__*) ;
 int pRtlCreateUnicodeStringFromAsciiz (int *,char*) ;
 int pRtlFreeUnicodeString (int *) ;
 int win_skip (char*) ;
 int winetestpath ;

__attribute__((used)) static void test_notify(void)
{
    OBJECT_ATTRIBUTES attr;
    LARGE_INTEGER timeout;
    IO_STATUS_BLOCK iosb;
    UNICODE_STRING str;
    HANDLE key, events[2], subkey;
    NTSTATUS status;

    InitializeObjectAttributes(&attr, &winetestpath, 0, 0, 0);
    status = pNtOpenKey(&key, KEY_ALL_ACCESS, &attr);
    ok(status == STATUS_SUCCESS, "NtOpenKey Failed: 0x%08x\n", status);

    events[0] = CreateEventW(((void*)0), FALSE, TRUE, ((void*)0));
    ok(events[0] != ((void*)0), "CreateEvent failed: %u\n", GetLastError());
    events[1] = CreateEventW(((void*)0), FALSE, TRUE, ((void*)0));
    ok(events[1] != ((void*)0), "CreateEvent failed: %u\n", GetLastError());

    status = pNtNotifyChangeKey(key, events[0], ((void*)0), ((void*)0), &iosb, REG_NOTIFY_CHANGE_NAME, FALSE, ((void*)0), 0, TRUE);
    ok(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);
    status = pNtNotifyChangeKey(key, events[1], ((void*)0), ((void*)0), &iosb, REG_NOTIFY_CHANGE_NAME, FALSE, ((void*)0), 0, TRUE);
    ok(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

    timeout.QuadPart = 0;
    status = pNtWaitForSingleObject(events[0], FALSE, &timeout);
    ok(status == STATUS_TIMEOUT, "NtWaitForSingleObject returned %x\n", status);
    status = pNtWaitForSingleObject(events[1], FALSE, &timeout);
    ok(status == STATUS_TIMEOUT, "NtWaitForSingleObject returned %x\n", status);

    attr.RootDirectory = key;
    attr.ObjectName = &str;

    pRtlCreateUnicodeStringFromAsciiz(&str, "test_subkey");
    status = pNtCreateKey(&subkey, GENERIC_ALL, &attr, 0, 0, 0, 0);
    ok(status == STATUS_SUCCESS, "NtCreateKey failed: 0x%08x\n", status);
    pRtlFreeUnicodeString(&str);

    status = pNtWaitForSingleObject(events[0], FALSE, &timeout);
    ok(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);
    status = pNtWaitForSingleObject(events[1], FALSE, &timeout);
    ok(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

    status = pNtNotifyChangeKey(key, events[0], ((void*)0), ((void*)0), &iosb, 0, FALSE, ((void*)0), 0, TRUE);
    ok(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);
    status = pNtNotifyChangeKey(key, events[1], ((void*)0), ((void*)0), &iosb, 0, FALSE, ((void*)0), 0, TRUE);
    ok(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

    status = pNtDeleteKey(subkey);
    ok(status == STATUS_SUCCESS, "NtDeleteSubkey failed: %x\n", status);

    status = pNtWaitForSingleObject(events[0], FALSE, &timeout);
    ok(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);
    status = pNtWaitForSingleObject(events[1], FALSE, &timeout);
    ok(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

    pNtClose(subkey);

    status = pNtNotifyChangeKey(key, events[0], ((void*)0), ((void*)0), &iosb, 0, FALSE, ((void*)0), 0, TRUE);
    ok(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);
    status = pNtNotifyChangeKey(key, events[1], ((void*)0), ((void*)0), &iosb, 0, FALSE, ((void*)0), 0, TRUE);
    ok(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

    pNtClose(key);

    status = pNtWaitForSingleObject(events[0], FALSE, &timeout);
    ok(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);
    status = pNtWaitForSingleObject(events[1], FALSE, &timeout);
    ok(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

    if (pNtNotifyChangeMultipleKeys)
    {
        InitializeObjectAttributes(&attr, &winetestpath, 0, 0, 0);
        status = pNtOpenKey(&key, KEY_ALL_ACCESS, &attr);
        ok(status == STATUS_SUCCESS, "NtOpenKey Failed: 0x%08x\n", status);

        status = pNtNotifyChangeMultipleKeys(key, 0, ((void*)0), events[0], ((void*)0), ((void*)0), &iosb, REG_NOTIFY_CHANGE_NAME, FALSE, ((void*)0), 0, TRUE);
        ok(status == STATUS_PENDING, "NtNotifyChangeKey returned %x\n", status);

        timeout.QuadPart = 0;
        status = pNtWaitForSingleObject(events[0], FALSE, &timeout);
        ok(status == STATUS_TIMEOUT, "NtWaitForSingleObject returned %x\n", status);

        attr.RootDirectory = key;
        attr.ObjectName = &str;
        pRtlCreateUnicodeStringFromAsciiz(&str, "test_subkey");
        status = pNtCreateKey(&subkey, GENERIC_ALL, &attr, 0, 0, 0, 0);
        ok(status == STATUS_SUCCESS, "NtCreateKey failed: 0x%08x\n", status);
        pRtlFreeUnicodeString(&str);

        status = pNtWaitForSingleObject(events[0], FALSE, &timeout);
        ok(status == STATUS_SUCCESS, "NtWaitForSingleObject returned %x\n", status);

        status = pNtDeleteKey(subkey);
        ok(status == STATUS_SUCCESS, "NtDeleteSubkey failed: %x\n", status);
        pNtClose(subkey);
        pNtClose(key);
    }
    else
    {
        win_skip("NtNotifyChangeMultipleKeys not available\n");
    }

    pNtClose(events[0]);
    pNtClose(events[1]);
}
