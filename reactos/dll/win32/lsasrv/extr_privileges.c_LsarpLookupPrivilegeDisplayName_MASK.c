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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
typedef  size_t ULONG ;
typedef  int UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Name; } ;
struct TYPE_7__ {scalar_t__ Length; int MaximumLength; int /*<<< orphan*/ * Buffer; } ;
typedef  int /*<<< orphan*/  RPC_UNICODE_STRING ;
typedef  TYPE_1__* PRPC_UNICODE_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IDS_CREATE_TOKEN_PRIVILEGE ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_NO_SUCH_PRIVILEGE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_2__* WellKnownPrivileges ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC8(PRPC_UNICODE_STRING Name,
                                USHORT ClientLanguage,
                                USHORT ClientSystemDefaultLanguage,
                                PRPC_UNICODE_STRING *DisplayName,
                                USHORT *LanguageReturned)
{
    PRPC_UNICODE_STRING DisplayNameBuffer;
    HINSTANCE hInstance;
    ULONG Index;
    UINT nLength;

    FUNC6("LsarpLookupPrivilegeDisplayName(%p 0x%04hu 0x%04hu %p %p)",
          Name, ClientLanguage, ClientSystemDefaultLanguage, DisplayName, LanguageReturned);

    if (Name->Length == 0 || Name->Buffer == NULL)
        return STATUS_INVALID_PARAMETER;

    hInstance = FUNC1(L"lsasrv.dll");

    for (Index = 0; Index < FUNC0(WellKnownPrivileges); Index++)
    {
        if (FUNC7(Name->Buffer, WellKnownPrivileges[Index].Name) == 0)
        {
            FUNC6("Index: %u\n", Index);
            nLength = FUNC2(hInstance,
                                                    IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                                    ClientLanguage);
            if (nLength != 0)
            {
                DisplayNameBuffer = FUNC4(sizeof(RPC_UNICODE_STRING));
                if (DisplayNameBuffer == NULL)
                    return STATUS_NO_MEMORY;

                DisplayNameBuffer->Length = nLength * sizeof(WCHAR);
                DisplayNameBuffer->MaximumLength = DisplayNameBuffer->Length + sizeof(WCHAR);

                DisplayNameBuffer->Buffer = FUNC4(DisplayNameBuffer->MaximumLength);
                if (DisplayNameBuffer->Buffer == NULL)
                {
                    FUNC5(DisplayNameBuffer);
                    return STATUS_NO_MEMORY;
                }

                FUNC3(hInstance,
                                 IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                 ClientLanguage,
                                 DisplayNameBuffer->Buffer,
                                 nLength);

                *DisplayName = DisplayNameBuffer;
                *LanguageReturned = ClientLanguage;
            }
            else
            {
                nLength = FUNC2(hInstance,
                                                        IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                                        ClientSystemDefaultLanguage);
                if (nLength != 0)
                {
                    DisplayNameBuffer = FUNC4(sizeof(RPC_UNICODE_STRING));
                    if (DisplayNameBuffer == NULL)
                        return STATUS_NO_MEMORY;

                    DisplayNameBuffer->Length = nLength * sizeof(WCHAR);
                    DisplayNameBuffer->MaximumLength = DisplayNameBuffer->Length + sizeof(WCHAR);

                    DisplayNameBuffer->Buffer = FUNC4(DisplayNameBuffer->MaximumLength);
                    if (DisplayNameBuffer->Buffer == NULL)
                    {
                        FUNC5(DisplayNameBuffer);
                        return STATUS_NO_MEMORY;
                    }

                    FUNC3(hInstance,
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
#if 0
                    nLength = LsapGetResourceStringLengthEx(hInstance,
                                                            IDS_CREATE_TOKEN_PRIVILEGE + Index,
                                                            0x409);
#endif
                }
            }

            return STATUS_SUCCESS;
        }
    }

    return STATUS_NO_SUCH_PRIVILEGE;
}