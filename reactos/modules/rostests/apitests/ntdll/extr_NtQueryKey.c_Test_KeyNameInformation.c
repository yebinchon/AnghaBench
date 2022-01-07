
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {int Length; int MaximumLength; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_11__ {int NameLength; int Name; } ;
typedef TYPE_2__* PKEY_NAME_INFORMATION ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int * HANDLE ;


 int FIELD_OFFSET (int ,int ) ;
 int InitializeObjectAttributes (int *,TYPE_1__*,int ,int *,int *) ;
 int KEY_NAME_INFORMATION ;
 int KEY_READ ;
 int KeyNameInformation ;
 int * Name ;
 int NtClose (int *) ;
 int NtOpenKey (int **,int ,int *) ;
 int NtQueryKey (int *,int ,TYPE_2__*,int,int*) ;
 int OBJ_CASE_INSENSITIVE ;
 TYPE_1__ RTL_CONSTANT_STRING (char*) ;
 TYPE_2__* RtlAllocateHeap (int ,int ,int) ;
 scalar_t__ RtlCompareUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 int RtlFreeHeap (int ,int ,TYPE_2__*) ;
 int RtlGetProcessHeap () ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int ok (int,char*,...) ;
 int ok_ntstatus (int ,int ) ;
 int ok_size_t (int,int) ;
 int skip (char*) ;

__attribute__((used)) static
void
Test_KeyNameInformation(void)
{
    UNICODE_STRING HKLM_Name = RTL_CONSTANT_STRING(L"\\Registry\\Machine");
    UNICODE_STRING HKLM_Software_Name = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\Software");
    UNICODE_STRING Software_Name = RTL_CONSTANT_STRING(L"Software");
    UNICODE_STRING InfoName;
    HANDLE HKLM_Key, HKLM_Software_Key;
    PKEY_NAME_INFORMATION NameInformation;
    ULONG InfoLength;
    OBJECT_ATTRIBUTES ObjectAttributes;
    NTSTATUS Status;


    InitializeObjectAttributes(&ObjectAttributes,
        &HKLM_Name,
        OBJ_CASE_INSENSITIVE,
        ((void*)0),
        ((void*)0));
    Status = NtOpenKey(&HKLM_Key, KEY_READ, &ObjectAttributes);
    ok_ntstatus(Status, STATUS_SUCCESS);


    InfoLength = 0;
    Status = NtQueryKey(HKLM_Key, KeyNameInformation, ((void*)0), 0, &InfoLength);
    ok_ntstatus(Status, STATUS_BUFFER_TOO_SMALL);
    ok_size_t(InfoLength, FIELD_OFFSET(KEY_NAME_INFORMATION, Name[HKLM_Name.Length/sizeof(WCHAR)]));


    NameInformation = RtlAllocateHeap(RtlGetProcessHeap(), 0, InfoLength);
    if (!NameInformation)
    {
        skip("Out of memory\n");
        return;
    }

    Status = NtQueryKey(HKLM_Key, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    ok_ntstatus(Status, STATUS_SUCCESS);
    ok_size_t(InfoLength, FIELD_OFFSET(KEY_NAME_INFORMATION, Name[HKLM_Name.Length/sizeof(WCHAR)]));
    ok_size_t(NameInformation->NameLength, HKLM_Name.Length);

    InfoName.Buffer = NameInformation->Name;
    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = NameInformation->NameLength;
    ok(RtlCompareUnicodeString(&InfoName, &HKLM_Name, TRUE) == 0, "%.*S\n",
        InfoName.Length, InfoName.Buffer);

    RtlFreeHeap(RtlGetProcessHeap(), 0, NameInformation);


    InitializeObjectAttributes(&ObjectAttributes,
        &Software_Name,
        OBJ_CASE_INSENSITIVE,
        HKLM_Key,
        ((void*)0));
    Status = NtOpenKey(&HKLM_Software_Key, KEY_READ, &ObjectAttributes);
    ok_ntstatus(Status, STATUS_SUCCESS);


    InfoLength = 0;
    Status = NtQueryKey(HKLM_Software_Key, KeyNameInformation, ((void*)0), 0, &InfoLength);
    ok_ntstatus(Status, STATUS_BUFFER_TOO_SMALL);
    ok_size_t(InfoLength, FIELD_OFFSET(KEY_NAME_INFORMATION, Name[HKLM_Software_Name.Length/sizeof(WCHAR)]));


    NameInformation = RtlAllocateHeap(RtlGetProcessHeap(), 0, InfoLength);
    ok(NameInformation != ((void*)0), "\n");

    Status = NtQueryKey(HKLM_Software_Key, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    ok_ntstatus(Status, STATUS_SUCCESS);
    ok_size_t(InfoLength, FIELD_OFFSET(KEY_NAME_INFORMATION, Name[HKLM_Software_Name.Length/sizeof(WCHAR)]));
    ok_size_t(NameInformation->NameLength, HKLM_Software_Name.Length);

    InfoName.Buffer = NameInformation->Name;
    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = NameInformation->NameLength;
    ok(RtlCompareUnicodeString(&InfoName, &HKLM_Software_Name, TRUE) == 0, "%.*S\n",
        InfoName.Length, InfoName.Buffer);

    RtlFreeHeap(RtlGetProcessHeap(), 0, NameInformation);

    NtClose(HKLM_Software_Key);
    NtClose(HKLM_Key);
}
