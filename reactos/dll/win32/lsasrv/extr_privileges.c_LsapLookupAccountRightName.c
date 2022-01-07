
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t ULONG ;
struct TYPE_7__ {size_t Flag; int Name; } ;
struct TYPE_6__ {int Length; int MaximumLength; int * Buffer; } ;
typedef int RPC_UNICODE_STRING ;
typedef TYPE_1__* PRPC_UNICODE_STRING ;
typedef int NTSTATUS ;


 size_t ARRAYSIZE (TYPE_2__*) ;
 void* MIDL_user_allocate (int) ;
 int MIDL_user_free (TYPE_1__*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NO_MEMORY ;
 int STATUS_NO_SUCH_PRIVILEGE ;
 int STATUS_SUCCESS ;
 TYPE_2__* WellKnownRights ;
 int wcscpy (int *,int ) ;
 int wcslen (int ) ;

NTSTATUS
LsapLookupAccountRightName(ULONG RightValue,
                           PRPC_UNICODE_STRING *Name)
{
    PRPC_UNICODE_STRING NameBuffer;
    ULONG i;

    for (i = 0; i < ARRAYSIZE(WellKnownRights); i++)
    {
        if (WellKnownRights[i].Flag == RightValue)
        {
            NameBuffer = MIDL_user_allocate(sizeof(RPC_UNICODE_STRING));
            if (NameBuffer == ((void*)0))
                return STATUS_NO_MEMORY;

            NameBuffer->Length = wcslen(WellKnownRights[i].Name) * sizeof(WCHAR);
            NameBuffer->MaximumLength = NameBuffer->Length + sizeof(WCHAR);

            NameBuffer->Buffer = MIDL_user_allocate(NameBuffer->MaximumLength);
            if (NameBuffer->Buffer == ((void*)0))
            {
                MIDL_user_free(NameBuffer);
                return STATUS_INSUFFICIENT_RESOURCES;
            }

            wcscpy(NameBuffer->Buffer, WellKnownRights[i].Name);

            *Name = NameBuffer;

            return STATUS_SUCCESS;
        }
    }

    return STATUS_NO_SUCH_PRIVILEGE;
}
