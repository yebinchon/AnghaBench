#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
struct TYPE_31__ {TYPE_8__* RegionNode; int /*<<< orphan*/  FieldType; scalar_t__ Attribute; scalar_t__ FieldFlags; } ;
struct TYPE_30__ {TYPE_5__* Object; } ;
struct TYPE_23__ {scalar_t__ Integer; int /*<<< orphan*/  Name; TYPE_7__* Arg; } ;
struct TYPE_24__ {TYPE_7__* Next; TYPE_1__ Value; } ;
struct TYPE_29__ {TYPE_2__ Common; } ;
struct TYPE_28__ {int /*<<< orphan*/  ScopeInfo; } ;
struct TYPE_26__ {scalar_t__ SpaceId; int /*<<< orphan*/  Length; } ;
struct TYPE_25__ {int /*<<< orphan*/  InternalPccBuffer; } ;
struct TYPE_27__ {TYPE_4__ Region; TYPE_3__ Field; } ;
typedef  TYPE_6__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_7__ ACPI_PARSE_OBJECT ;
typedef  TYPE_8__ ACPI_NAMESPACE_NODE ;
typedef  TYPE_9__ ACPI_CREATE_FIELD_INFO ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  ACPI_IMODE_EXECUTE ; 
 int /*<<< orphan*/  ACPI_NS_SEARCH_PARENT ; 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_REGION_FIELD ; 
 int /*<<< orphan*/  ACPI_TYPE_REGION ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,TYPE_6__*,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,TYPE_8__**) ; 
 int /*<<< orphan*/  DsCreateField ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC9 (
    ACPI_PARSE_OBJECT       *Op,
    ACPI_NAMESPACE_NODE     *RegionNode,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status;
    ACPI_PARSE_OBJECT       *Arg;
    ACPI_CREATE_FIELD_INFO  Info;


    FUNC3 (DsCreateField, Op);


    /* First arg is the name of the parent OpRegion (must already exist) */

    Arg = Op->Common.Value.Arg;

    if (!RegionNode)
    {
        Status = FUNC6 (WalkState->ScopeInfo, Arg->Common.Value.Name,
            ACPI_TYPE_REGION, ACPI_IMODE_EXECUTE,
            ACPI_NS_SEARCH_PARENT, WalkState, &RegionNode);
#ifdef ACPI_ASL_COMPILER
        Status = AcpiDsCreateExternalRegion (Status, Arg,
            Arg->Common.Value.Name, WalkState, &RegionNode);
#endif
        if (FUNC2 (Status))
        {
            FUNC1 (WalkState->ScopeInfo,
                Arg->Common.Value.Name, Status);
            FUNC8 (Status);
        }
    }

    FUNC7 (&Info, 0, sizeof (ACPI_CREATE_FIELD_INFO));

    /* Second arg is the field flags */

    Arg = Arg->Common.Next;
    Info.FieldFlags = (UINT8) Arg->Common.Value.Integer;
    Info.Attribute = 0;

    /* Each remaining arg is a Named Field */

    Info.FieldType = ACPI_TYPE_LOCAL_REGION_FIELD;
    Info.RegionNode = RegionNode;

    Status = FUNC5 (&Info, WalkState, Arg->Common.Next);
    if (Info.RegionNode->Object->Region.SpaceId == ACPI_ADR_SPACE_PLATFORM_COMM &&
        !(RegionNode->Object->Field.InternalPccBuffer
        = FUNC0(Info.RegionNode->Object->Region.Length)))
    {
        FUNC8 (AE_NO_MEMORY);
    }
    FUNC8 (Status);
}