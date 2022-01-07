
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t ULONG ;
struct TYPE_9__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_12__ {int Name; TYPE_1__ Luid; } ;
struct TYPE_11__ {scalar_t__ HighPart; scalar_t__ LowPart; } ;
struct TYPE_10__ {int Length; int MaximumLength; int * Buffer; } ;
typedef int RPC_UNICODE_STRING ;
typedef TYPE_2__* PRPC_UNICODE_STRING ;
typedef TYPE_3__* PLUID ;
typedef int NTSTATUS ;


 size_t ARRAYSIZE (TYPE_4__*) ;
 void* MIDL_user_allocate (int) ;
 int MIDL_user_free (TYPE_2__*) ;
 scalar_t__ SE_MAX_WELL_KNOWN_PRIVILEGE ;
 scalar_t__ SE_MIN_WELL_KNOWN_PRIVILEGE ;
 int STATUS_NO_MEMORY ;
 int STATUS_NO_SUCH_PRIVILEGE ;
 int STATUS_SUCCESS ;
 TYPE_4__* WellKnownPrivileges ;
 int wcscpy (int *,int ) ;
 int wcslen (int ) ;

NTSTATUS
LsarpLookupPrivilegeName(PLUID Value,
                         PRPC_UNICODE_STRING *Name)
{
    PRPC_UNICODE_STRING NameBuffer;
    ULONG Priv;

    if (Value->HighPart != 0 ||
        (Value->LowPart < SE_MIN_WELL_KNOWN_PRIVILEGE ||
         Value->LowPart > SE_MAX_WELL_KNOWN_PRIVILEGE))
    {
        return STATUS_NO_SUCH_PRIVILEGE;
    }

    for (Priv = 0; Priv < ARRAYSIZE(WellKnownPrivileges); Priv++)
    {
        if (Value->LowPart == WellKnownPrivileges[Priv].Luid.LowPart &&
            Value->HighPart == WellKnownPrivileges[Priv].Luid.HighPart)
        {
            NameBuffer = MIDL_user_allocate(sizeof(RPC_UNICODE_STRING));
            if (NameBuffer == ((void*)0))
                return STATUS_NO_MEMORY;

            NameBuffer->Length = wcslen(WellKnownPrivileges[Priv].Name) * sizeof(WCHAR);
            NameBuffer->MaximumLength = NameBuffer->Length + sizeof(WCHAR);

            NameBuffer->Buffer = MIDL_user_allocate(NameBuffer->MaximumLength);
            if (NameBuffer->Buffer == ((void*)0))
            {
                MIDL_user_free(NameBuffer);
                return STATUS_NO_MEMORY;
            }

            wcscpy(NameBuffer->Buffer, WellKnownPrivileges[Priv].Name);

            *Name = NameBuffer;

            return STATUS_SUCCESS;
        }
    }

    return STATUS_NO_SUCH_PRIVILEGE;
}
