#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_23__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_34__ {int /*<<< orphan*/ * Buffer; int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Length; } ;
struct TYPE_33__ {size_t Entries; TYPE_1__* SidInfo; } ;
struct TYPE_32__ {scalar_t__ Use; size_t DomainIndex; TYPE_7__ Name; scalar_t__ Flags; } ;
struct TYPE_31__ {TYPE_2__* Element; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_30__ {scalar_t__* Element; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_29__ {int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Buffer; int /*<<< orphan*/  Length; } ;
struct TYPE_28__ {int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Buffer; int /*<<< orphan*/  Length; } ;
struct TYPE_27__ {int /*<<< orphan*/  Sid; } ;
typedef  TYPE_3__ SAMPR_ULONG_ARRAY ;
typedef  TYPE_4__ SAMPR_RETURNED_USTRING_ARRAY ;
typedef  int /*<<< orphan*/ * SAMPR_HANDLE ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_5__* PLSAPR_TRANSLATED_NAME_EX ;
typedef  TYPE_6__* PLSAPR_SID_ENUM_BUFFER ;
typedef  int /*<<< orphan*/  PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef  TYPE_7__* NTSTATUS ;
typedef  TYPE_7__* LPWSTR ;

/* Variables and functions */
 TYPE_23__ BuiltinDomainName ; 
 int /*<<< orphan*/  BuiltinDomainSid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_7__**) ; 
 int /*<<< orphan*/  DOMAIN_LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ,TYPE_23__*,int /*<<< orphan*/ ,size_t*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SAM_SERVER_CONNECT ; 
 int SAM_SERVER_LOOKUP_DOMAIN ; 
 TYPE_7__* STATUS_INSUFFICIENT_RESOURCES ; 
 TYPE_7__* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 TYPE_7__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 TYPE_7__* FUNC13 (int /*<<< orphan*/ *,int,size_t*,TYPE_4__*,TYPE_3__*) ; 
 TYPE_7__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ SidTypeDomain ; 
 scalar_t__ SidTypeUnknown ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

__attribute__((used)) static NTSTATUS
FUNC16(PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,
                            PLSAPR_TRANSLATED_NAME_EX NamesBuffer,
                            PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                            PULONG Mapped)
{
    SAMPR_HANDLE ServerHandle = NULL;
    SAMPR_HANDLE DomainHandle = NULL;
    SAMPR_RETURNED_USTRING_ARRAY Names = {0, NULL};
    SAMPR_ULONG_ARRAY Use = {0, NULL};
    LPWSTR SidString = NULL;
    ULONG DomainIndex;
    ULONG RelativeIds[1];
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    Status = FUNC12(NULL,
                         &ServerHandle,
                         SAM_SERVER_CONNECT | SAM_SERVER_LOOKUP_DOMAIN);
    if (!FUNC6(Status))
    {
        FUNC15("SamrConnect failed (Status %08lx)\n", Status);
        goto done;
    }

    Status = FUNC14(ServerHandle,
                            DOMAIN_LOOKUP,
                            BuiltinDomainSid,
                            &DomainHandle);
    if (!FUNC6(Status))
    {
        FUNC15("SamOpenDomain failed (Status %08lx)\n", Status);
        goto done;
    }

    for (i = 0; i < SidEnumBuffer->Entries; i++)
    {
        /* Ignore SIDs which are already mapped */
        if (NamesBuffer[i].Use != SidTypeUnknown)
            continue;

        FUNC0(SidEnumBuffer->SidInfo[i].Sid, &SidString);
        FUNC15("Mapping SID: %S\n", SidString);
        FUNC1(SidString);
        SidString = NULL;

        if (FUNC8(BuiltinDomainSid, SidEnumBuffer->SidInfo[i].Sid))
        {
            FUNC15("Found builtin domain!\n");

            NamesBuffer[i].Use = SidTypeDomain;
            NamesBuffer[i].Flags = 0;

            NamesBuffer[i].Name.Length = BuiltinDomainName.Length;
            NamesBuffer[i].Name.MaximumLength = BuiltinDomainName.MaximumLength;
            NamesBuffer[i].Name.Buffer = FUNC5(BuiltinDomainName.MaximumLength);
            if (NamesBuffer[i].Name.Buffer == NULL)
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            FUNC7(NamesBuffer[i].Name.Buffer, BuiltinDomainName.Buffer, BuiltinDomainName.MaximumLength);

            Status = FUNC2(DomainsBuffer,
                                                &BuiltinDomainName,
                                                BuiltinDomainSid,
                                                &DomainIndex);
            if (!FUNC6(Status))
                goto done;

            NamesBuffer[i].DomainIndex = DomainIndex;

            FUNC15("Mapped to: %wZ\n", &NamesBuffer[i].Name);

            (*Mapped)++;
        }
        else if (FUNC4(BuiltinDomainSid, SidEnumBuffer->SidInfo[i].Sid))
        {
            FUNC15("Found builtin domain account!\n");

            RelativeIds[0] = FUNC3(SidEnumBuffer->SidInfo[i].Sid);

            Status = FUNC13(DomainHandle,
                                           1,
                                           RelativeIds,
                                           &Names,
                                           &Use);
            if (FUNC6(Status))
            {
                NamesBuffer[i].Use = Use.Element[0];
                NamesBuffer[i].Flags = 0;

                NamesBuffer[i].Name.Length = Names.Element[0].Length;
                NamesBuffer[i].Name.MaximumLength = Names.Element[0].MaximumLength;
                NamesBuffer[i].Name.Buffer = FUNC5(Names.Element[0].MaximumLength);
                if (NamesBuffer[i].Name.Buffer == NULL)
                {
                    FUNC9(&Names);
                    FUNC10(&Use);

                    Status = STATUS_INSUFFICIENT_RESOURCES;
                    goto done;
                }

                FUNC7(NamesBuffer[i].Name.Buffer,
                              Names.Element[0].Buffer,
                              Names.Element[0].MaximumLength);

                FUNC9(&Names);
                FUNC10(&Use);

                Status = FUNC2(DomainsBuffer,
                                                    &BuiltinDomainName,
                                                    BuiltinDomainSid,
                                                    &DomainIndex);
                if (!FUNC6(Status))
                    goto done;

                NamesBuffer[i].DomainIndex = DomainIndex;

                FUNC15("Mapped to: %wZ\n", &NamesBuffer[i].Name);

                (*Mapped)++;
            }
        }
    }

done:
    if (DomainHandle != NULL)
        FUNC11(&DomainHandle);

    if (ServerHandle != NULL)
        FUNC11(&ServerHandle);

    return Status;
}