
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Length; int MaximumLength; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_8__ {int NameLength; int Name; } ;
typedef int PUNICODE_STRING ;
typedef TYPE_2__* PKEY_NAME_INFORMATION ;
typedef int NTSTATUS ;
typedef int HKEY ;


 int KeyNameInformation ;
 int NtQueryKey (int ,int ,TYPE_2__*,scalar_t__,scalar_t__*) ;
 int RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE ;
 TYPE_2__* RtlAllocateHeap (int ,int ,scalar_t__) ;
 int RtlDuplicateUnicodeString (int ,TYPE_1__*,int ) ;
 int RtlFreeHeap (int ,int ,TYPE_2__*) ;
 int RtlGetProcessHeap () ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;
 int ok (int ,char*) ;
 int ok_ntstatus (int ,int ) ;

__attribute__((used)) static
void
GetKeyName(HKEY hKey, PUNICODE_STRING KeyName)
{
    UNICODE_STRING InfoName;
    PKEY_NAME_INFORMATION NameInformation;
    ULONG InfoLength;
    NTSTATUS Status;


    InfoLength = 0;
    Status = NtQueryKey(hKey, KeyNameInformation, ((void*)0), 0, &InfoLength);
    ok_ntstatus(Status, STATUS_BUFFER_TOO_SMALL);


    NameInformation = RtlAllocateHeap(RtlGetProcessHeap(), 0, InfoLength);
    ok(NameInformation != ((void*)0), "\n");

    Status = NtQueryKey(hKey, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    ok_ntstatus(Status, STATUS_SUCCESS);

    InfoName.Buffer = NameInformation->Name;
    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = InfoName.Length;

    RtlDuplicateUnicodeString(RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE, &InfoName, KeyName);

    RtlFreeHeap(RtlGetProcessHeap(), 0, NameInformation);
}
