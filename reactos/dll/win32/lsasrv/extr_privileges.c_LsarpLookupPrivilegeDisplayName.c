
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
typedef size_t ULONG ;
typedef int UINT ;
struct TYPE_8__ {int Name; } ;
struct TYPE_7__ {scalar_t__ Length; int MaximumLength; int * Buffer; } ;
typedef int RPC_UNICODE_STRING ;
typedef TYPE_1__* PRPC_UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int HINSTANCE ;


 size_t ARRAYSIZE (TYPE_2__*) ;
 int GetModuleHandleW (char*) ;
 scalar_t__ IDS_CREATE_TOKEN_PRIVILEGE ;
 int LsapGetResourceStringLengthEx (int ,scalar_t__,int) ;
 int LsapLoadStringEx (int ,scalar_t__,int,int *,int) ;
 void* MIDL_user_allocate (int) ;
 int MIDL_user_free (TYPE_1__*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NO_MEMORY ;
 int STATUS_NO_SUCH_PRIVILEGE ;
 int STATUS_SUCCESS ;
 int TRACE (char*,...) ;
 TYPE_2__* WellKnownPrivileges ;
 scalar_t__ _wcsicmp (int *,int ) ;

NTSTATUS
LsarpLookupPrivilegeDisplayName(PRPC_UNICODE_STRING Name,
                                USHORT ClientLanguage,
                                USHORT ClientSystemDefaultLanguage,
                                PRPC_UNICODE_STRING *DisplayName,
                                USHORT *LanguageReturned)
{
    PRPC_UNICODE_STRING DisplayNameBuffer;
    HINSTANCE hInstance;
    ULONG Index;
    UINT nLength;

    TRACE("LsarpLookupPrivilegeDisplayName(%p 0x%04hu 0x%04hu %p %p)",
          Name, ClientLanguage, ClientSystemDefaultLanguage, DisplayName, LanguageReturned);

    if (Name->Length == 0 || Name->Buffer == ((void*)0))
        return STATUS_INVALID_PARAMETER;

    hInstance = GetModuleHandleW(L"lsasrv.dll");

    for (Index = 0; Index < ARRAYSIZE(WellKnownPrivileges); Index++)
    {
        if (_wcsicmp(Name->Buffer, WellKnownPrivileges[Index].Name) == 0)
        {
            TRACE("Index: %u\n", Index);
            nLength = LsapGetResourceStringLengthEx(hInstance,
                                                    IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                                    ClientLanguage);
            if (nLength != 0)
            {
                DisplayNameBuffer = MIDL_user_allocate(sizeof(RPC_UNICODE_STRING));
                if (DisplayNameBuffer == ((void*)0))
                    return STATUS_NO_MEMORY;

                DisplayNameBuffer->Length = nLength * sizeof(WCHAR);
                DisplayNameBuffer->MaximumLength = DisplayNameBuffer->Length + sizeof(WCHAR);

                DisplayNameBuffer->Buffer = MIDL_user_allocate(DisplayNameBuffer->MaximumLength);
                if (DisplayNameBuffer->Buffer == ((void*)0))
                {
                    MIDL_user_free(DisplayNameBuffer);
                    return STATUS_NO_MEMORY;
                }

                LsapLoadStringEx(hInstance,
                                 IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                 ClientLanguage,
                                 DisplayNameBuffer->Buffer,
                                 nLength);

                *DisplayName = DisplayNameBuffer;
                *LanguageReturned = ClientLanguage;
            }
            else
            {
                nLength = LsapGetResourceStringLengthEx(hInstance,
                                                        IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                                        ClientSystemDefaultLanguage);
                if (nLength != 0)
                {
                    DisplayNameBuffer = MIDL_user_allocate(sizeof(RPC_UNICODE_STRING));
                    if (DisplayNameBuffer == ((void*)0))
                        return STATUS_NO_MEMORY;

                    DisplayNameBuffer->Length = nLength * sizeof(WCHAR);
                    DisplayNameBuffer->MaximumLength = DisplayNameBuffer->Length + sizeof(WCHAR);

                    DisplayNameBuffer->Buffer = MIDL_user_allocate(DisplayNameBuffer->MaximumLength);
                    if (DisplayNameBuffer->Buffer == ((void*)0))
                    {
                        MIDL_user_free(DisplayNameBuffer);
                        return STATUS_NO_MEMORY;
                    }

                    LsapLoadStringEx(hInstance,
                                     IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                     ClientSystemDefaultLanguage,
                                     DisplayNameBuffer->Buffer,
                                     nLength);

                    *DisplayName = DisplayNameBuffer;
                    *LanguageReturned = ClientSystemDefaultLanguage;
                }
                else
                {
                    return STATUS_INVALID_PARAMETER;





                }
            }

            return STATUS_SUCCESS;
        }
    }

    return STATUS_NO_SUCH_PRIVILEGE;
}
