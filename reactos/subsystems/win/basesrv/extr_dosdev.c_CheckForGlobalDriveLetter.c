
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int UNICODE_STRING ;
typedef scalar_t__ SHORT ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 int CsrImpersonateClient (int *) ;
 int CsrRevertToSelf () ;
 int FALSE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int IsGlobalSymbolicLink (int ,int *) ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtOpenSymbolicLinkObject (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlInitUnicodeString (int *,scalar_t__*) ;
 int SYMBOLIC_LINK_QUERY ;
 scalar_t__ UNICODE_NULL ;
 int wcsncpy (scalar_t__*,char*,int) ;

BOOLEAN
CheckForGlobalDriveLetter(SHORT DriveLetter)
{
    WCHAR Path[8];
    NTSTATUS Status;
    BOOLEAN IsGlobal;
    UNICODE_STRING PathU;
    HANDLE SymbolicLinkHandle;
    OBJECT_ATTRIBUTES ObjectAttributes;


    wcsncpy(Path, L"\\??\\X:", (sizeof(L"\\??\\X:") / sizeof(WCHAR)));
    Path[4] = DriveLetter + L'A';
    Path[6] = UNICODE_NULL;


    RtlInitUnicodeString(&PathU, Path);
    InitializeObjectAttributes(&ObjectAttributes,
                               &PathU,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));


    if (!CsrImpersonateClient(((void*)0)))
    {
        return FALSE;
    }


    Status = NtOpenSymbolicLinkObject(&SymbolicLinkHandle,
                                      SYMBOLIC_LINK_QUERY,
                                      &ObjectAttributes);

    CsrRevertToSelf();

    if (!NT_SUCCESS(Status))
    {
        return FALSE;
    }


    Status = IsGlobalSymbolicLink(SymbolicLinkHandle, &IsGlobal);
    NtClose(SymbolicLinkHandle);

    if (!NT_SUCCESS(Status))
    {
        return FALSE;
    }

    return IsGlobal;
}
