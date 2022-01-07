
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int i ;
typedef int WCHAR ;
struct TYPE_6__ {int MaximumLength; int Length; char* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int InitializeObjectAttributes (int *,int *,int ,int ,int ) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int KeyValueBasicInformation ;
 int REG_DWORD ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 int pNtClose (int ) ;
 scalar_t__ pNtDeleteValueKey (int ,TYPE_1__*) ;
 scalar_t__ pNtOpenKey (int *,int,int *) ;
 scalar_t__ pNtQueryValueKey (int ,TYPE_1__*,int ,int *,int ,int*) ;
 scalar_t__ pNtSetValueKey (int ,TYPE_1__*,int ,int ,int*,int) ;
 int pRtlFreeUnicodeString (TYPE_1__*) ;
 int winetestpath ;

__attribute__((used)) static void test_long_value_name(void)
{
    HANDLE key;
    NTSTATUS status, expected;
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING ValName;
    DWORD i;

    InitializeObjectAttributes(&attr, &winetestpath, 0, 0, 0);
    status = pNtOpenKey(&key, KEY_WRITE|KEY_READ, &attr);
    ok(status == STATUS_SUCCESS, "NtOpenKey Failed: 0x%08x\n", status);

    ValName.MaximumLength = 0xfffc;
    ValName.Length = ValName.MaximumLength - sizeof(WCHAR);
    ValName.Buffer = HeapAlloc(GetProcessHeap(), 0, ValName.MaximumLength);
    for (i = 0; i < ValName.Length / sizeof(WCHAR); i++)
        ValName.Buffer[i] = 'a';
    ValName.Buffer[i] = 0;

    status = pNtDeleteValueKey(key, &ValName);
    ok(status == STATUS_OBJECT_NAME_NOT_FOUND, "NtDeleteValueKey with nonexistent long value name returned 0x%08x\n", status);
    status = pNtSetValueKey(key, &ValName, 0, REG_DWORD, &i, sizeof(i));
    ok(status == STATUS_INVALID_PARAMETER || broken(status == STATUS_SUCCESS) ,
       "NtSetValueKey with long value name returned 0x%08x\n", status);
    expected = (status == STATUS_SUCCESS) ? STATUS_SUCCESS : STATUS_OBJECT_NAME_NOT_FOUND;
    status = pNtDeleteValueKey(key, &ValName);
    ok(status == expected, "NtDeleteValueKey with long value name returned 0x%08x\n", status);

    status = pNtQueryValueKey(key, &ValName, KeyValueBasicInformation, ((void*)0), 0, &i);
    ok(status == STATUS_OBJECT_NAME_NOT_FOUND, "NtQueryValueKey with nonexistent long value name returned 0x%08x\n", status);

    pRtlFreeUnicodeString(&ValName);
    pNtClose(key);
}
