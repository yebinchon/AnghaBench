
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
typedef int UNICODE_NULL ;
typedef size_t ULONG ;
struct TYPE_12__ {size_t Name; int Luid; } ;
struct TYPE_9__ {int Length; int MaximumLength; TYPE_3__* Buffer; } ;
struct TYPE_11__ {TYPE_1__ Name; int LocalValue; } ;
struct TYPE_10__ {size_t Entries; TYPE_3__* Privileges; } ;
typedef TYPE_2__* PLSAPR_PRIVILEGE_ENUM_BUFFER ;
typedef TYPE_3__* PLSAPR_POLICY_PRIVILEGE_DEF ;
typedef scalar_t__ NTSTATUS ;
typedef int LSAPR_POLICY_PRIVILEGE_DEF ;
typedef size_t DWORD ;
typedef scalar_t__ BOOLEAN ;


 size_t ARRAYSIZE (TYPE_5__*) ;
 scalar_t__ FALSE ;
 void* MIDL_user_allocate (size_t) ;
 int MIDL_user_free (TYPE_3__*) ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_MORE_ENTRIES ;
 scalar_t__ STATUS_SUCCESS ;
 int TRACE (char*,size_t) ;
 scalar_t__ TRUE ;
 TYPE_5__* WellKnownPrivileges ;
 int memcpy (TYPE_3__*,size_t,int) ;
 int wcslen (size_t) ;

NTSTATUS
LsarpEnumeratePrivileges(DWORD *EnumerationContext,
                         PLSAPR_PRIVILEGE_ENUM_BUFFER EnumerationBuffer,
                         DWORD PreferedMaximumLength)
{
    PLSAPR_POLICY_PRIVILEGE_DEF Privileges = ((void*)0);
    ULONG EnumIndex;
    ULONG EnumCount = 0;
    ULONG RequiredLength = 0;
    ULONG i;
    BOOLEAN MoreEntries = FALSE;
    NTSTATUS Status = STATUS_SUCCESS;

    EnumIndex = *EnumerationContext;

    for (; EnumIndex < ARRAYSIZE(WellKnownPrivileges); EnumIndex++)
    {
        TRACE("EnumIndex: %lu\n", EnumIndex);
        TRACE("Privilege Name: %S\n", WellKnownPrivileges[EnumIndex].Name);
        TRACE("Name Length: %lu\n", wcslen(WellKnownPrivileges[EnumIndex].Name));

        if ((RequiredLength +
             wcslen(WellKnownPrivileges[EnumIndex].Name) * sizeof(WCHAR) +
             sizeof(UNICODE_NULL) +
             sizeof(LSAPR_POLICY_PRIVILEGE_DEF)) > PreferedMaximumLength)
        {
            MoreEntries = TRUE;
            break;
        }

        RequiredLength += (wcslen(WellKnownPrivileges[EnumIndex].Name) * sizeof(WCHAR) +
                           sizeof(UNICODE_NULL) + sizeof(LSAPR_POLICY_PRIVILEGE_DEF));
        EnumCount++;
    }

    TRACE("EnumCount: %lu\n", EnumCount);
    TRACE("RequiredLength: %lu\n", RequiredLength);

    if (EnumCount == 0)
        goto done;

    Privileges = MIDL_user_allocate(EnumCount * sizeof(LSAPR_POLICY_PRIVILEGE_DEF));
    if (Privileges == ((void*)0))
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    EnumIndex = *EnumerationContext;

    for (i = 0; i < EnumCount; i++, EnumIndex++)
    {
        Privileges[i].LocalValue = WellKnownPrivileges[EnumIndex].Luid;

        Privileges[i].Name.Length = (USHORT)wcslen(WellKnownPrivileges[EnumIndex].Name) * sizeof(WCHAR);
        Privileges[i].Name.MaximumLength = (USHORT)Privileges[i].Name.Length + sizeof(UNICODE_NULL);

        Privileges[i].Name.Buffer = MIDL_user_allocate(Privileges[i].Name.MaximumLength);
        if (Privileges[i].Name.Buffer == ((void*)0))
        {
            Status = STATUS_INSUFFICIENT_RESOURCES;
            goto done;
        }

        memcpy(Privileges[i].Name.Buffer,
               WellKnownPrivileges[EnumIndex].Name,
               Privileges[i].Name.Length);
    }

done:
    if (NT_SUCCESS(Status))
    {
        EnumerationBuffer->Entries = EnumCount;
        EnumerationBuffer->Privileges = Privileges;
        *EnumerationContext += EnumCount;
    }
    else
    {
        if (Privileges != ((void*)0))
        {
            for (i = 0; i < EnumCount; i++)
            {
                if (Privileges[i].Name.Buffer != ((void*)0))
                    MIDL_user_free(Privileges[i].Name.Buffer);
            }

            MIDL_user_free(Privileges);
        }
    }

    if ((Status == STATUS_SUCCESS) && (MoreEntries != FALSE))
        Status = STATUS_MORE_ENTRIES;

    return Status;
}
