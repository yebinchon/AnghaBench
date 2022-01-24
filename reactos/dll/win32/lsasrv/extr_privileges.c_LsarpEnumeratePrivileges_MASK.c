#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
typedef  int /*<<< orphan*/  UNICODE_NULL ;
typedef  size_t ULONG ;
struct TYPE_12__ {size_t Name; int /*<<< orphan*/  Luid; } ;
struct TYPE_9__ {int Length; int MaximumLength; TYPE_3__* Buffer; } ;
struct TYPE_11__ {TYPE_1__ Name; int /*<<< orphan*/  LocalValue; } ;
struct TYPE_10__ {size_t Entries; TYPE_3__* Privileges; } ;
typedef  TYPE_2__* PLSAPR_PRIVILEGE_ENUM_BUFFER ;
typedef  TYPE_3__* PLSAPR_POLICY_PRIVILEGE_DEF ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LSAPR_POLICY_PRIVILEGE_DEF ;
typedef  size_t DWORD ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 size_t FUNC0 (TYPE_5__*) ; 
 scalar_t__ FALSE ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_MORE_ENTRIES ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 scalar_t__ TRUE ; 
 TYPE_5__* WellKnownPrivileges ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,size_t,int) ; 
 int FUNC6 (size_t) ; 

NTSTATUS
FUNC7(DWORD *EnumerationContext,
                         PLSAPR_PRIVILEGE_ENUM_BUFFER EnumerationBuffer,
                         DWORD PreferedMaximumLength)
{
    PLSAPR_POLICY_PRIVILEGE_DEF Privileges = NULL;
    ULONG EnumIndex;
    ULONG EnumCount = 0;
    ULONG RequiredLength = 0;
    ULONG i;
    BOOLEAN MoreEntries = FALSE;
    NTSTATUS Status = STATUS_SUCCESS;

    EnumIndex = *EnumerationContext;

    for (; EnumIndex < FUNC0(WellKnownPrivileges); EnumIndex++)
    {
        FUNC4("EnumIndex: %lu\n", EnumIndex);
        FUNC4("Privilege Name: %S\n", WellKnownPrivileges[EnumIndex].Name);
        FUNC4("Name Length: %lu\n", FUNC6(WellKnownPrivileges[EnumIndex].Name));

        if ((RequiredLength +
             FUNC6(WellKnownPrivileges[EnumIndex].Name) * sizeof(WCHAR) +
             sizeof(UNICODE_NULL) +
             sizeof(LSAPR_POLICY_PRIVILEGE_DEF)) > PreferedMaximumLength)
        {
            MoreEntries = TRUE;
            break;
        }

        RequiredLength += (FUNC6(WellKnownPrivileges[EnumIndex].Name) * sizeof(WCHAR) +
                           sizeof(UNICODE_NULL) + sizeof(LSAPR_POLICY_PRIVILEGE_DEF));
        EnumCount++;
    }

    FUNC4("EnumCount: %lu\n", EnumCount);
    FUNC4("RequiredLength: %lu\n", RequiredLength);

    if (EnumCount == 0)
        goto done;

    Privileges = FUNC1(EnumCount * sizeof(LSAPR_POLICY_PRIVILEGE_DEF));
    if (Privileges == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    EnumIndex = *EnumerationContext;

    for (i = 0; i < EnumCount; i++, EnumIndex++)
    {
        Privileges[i].LocalValue = WellKnownPrivileges[EnumIndex].Luid;

        Privileges[i].Name.Length = (USHORT)FUNC6(WellKnownPrivileges[EnumIndex].Name) * sizeof(WCHAR);
        Privileges[i].Name.MaximumLength = (USHORT)Privileges[i].Name.Length + sizeof(UNICODE_NULL);

        Privileges[i].Name.Buffer = FUNC1(Privileges[i].Name.MaximumLength);
        if (Privileges[i].Name.Buffer == NULL)
        {
            Status = STATUS_INSUFFICIENT_RESOURCES;
            goto done;
        }

        FUNC5(Privileges[i].Name.Buffer,
               WellKnownPrivileges[EnumIndex].Name,
               Privileges[i].Name.Length);
    }

done:
    if (FUNC3(Status))
    {
        EnumerationBuffer->Entries = EnumCount;
        EnumerationBuffer->Privileges = Privileges;
        *EnumerationContext += EnumCount;
    }
    else
    {
        if (Privileges != NULL)
        {
            for (i = 0; i < EnumCount; i++)
            {
                if (Privileges[i].Name.Buffer != NULL)
                    FUNC2(Privileges[i].Name.Buffer);
            }

            FUNC2(Privileges);
        }
    }

    if ((Status == STATUS_SUCCESS) && (MoreEntries != FALSE))
        Status = STATUS_MORE_ENTRIES;

    return Status;
}