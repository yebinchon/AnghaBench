#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_21__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_16__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_35__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Data; } ;
struct TYPE_34__ {int /*<<< orphan*/  AmlLength; int /*<<< orphan*/  AmlStart; } ;
struct TYPE_33__ {int Flags; TYPE_11__* NextObject; } ;
struct TYPE_32__ {TYPE_16__* BankObj; TYPE_16__* RegionObj; int /*<<< orphan*/  BaseByteOffset; int /*<<< orphan*/  StartFieldBitOffset; int /*<<< orphan*/  Value; } ;
struct TYPE_31__ {int /*<<< orphan*/  AccessByteWidth; TYPE_16__* RegionObj; int /*<<< orphan*/  BaseByteOffset; int /*<<< orphan*/  StartFieldBitOffset; int /*<<< orphan*/  PinNumberIndex; int /*<<< orphan*/  ResourceLength; int /*<<< orphan*/  ResourceBuffer; int /*<<< orphan*/  AccessLength; } ;
struct TYPE_30__ {int BitLength; int /*<<< orphan*/  AccessByteWidth; int /*<<< orphan*/  Node; } ;
struct TYPE_29__ {int /*<<< orphan*/  SpaceId; } ;
struct TYPE_28__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Pointer; } ;
struct TYPE_27__ {TYPE_9__ Named; } ;
struct TYPE_26__ {TYPE_11__* Object; } ;
struct TYPE_25__ {TYPE_3__ Region; } ;
struct TYPE_24__ {int FieldType; int /*<<< orphan*/  FieldNode; int /*<<< orphan*/  FieldBitPosition; int /*<<< orphan*/  DataRegisterNode; int /*<<< orphan*/  RegisterNode; int /*<<< orphan*/  RegionNode; int /*<<< orphan*/  BankValue; int /*<<< orphan*/  PinNumberIndex; int /*<<< orphan*/  ResourceLength; int /*<<< orphan*/  ResourceBuffer; TYPE_1__* ConnectionNode; int /*<<< orphan*/  AccessLength; int /*<<< orphan*/  FieldBitLength; int /*<<< orphan*/  Attribute; int /*<<< orphan*/  FieldFlags; } ;
struct TYPE_22__ {TYPE_16__* DataObj; TYPE_16__* IndexObj; scalar_t__ Value; int /*<<< orphan*/  BaseByteOffset; int /*<<< orphan*/  StartFieldBitOffset; int /*<<< orphan*/  AccessByteWidth; } ;
struct TYPE_23__ {TYPE_10__ IndexField; TYPE_5__ Field; TYPE_8__ Extra; TYPE_7__ Common; TYPE_6__ BankField; TYPE_4__ CommonField; TYPE_2__ Buffer; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_11__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_12__ ACPI_CREATE_FIELD_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_EC ; 
 TYPE_21__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_PARSE_OBJECT ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 130 
#define  ACPI_TYPE_LOCAL_INDEX_FIELD 129 
#define  ACPI_TYPE_LOCAL_REGION_FIELD 128 
 scalar_t__ ACPI_TYPE_REGION ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_11__*,scalar_t__) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_16__*) ; 
 TYPE_11__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__*) ; 
 int /*<<< orphan*/  ExPrepFieldValue ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC20 (
    ACPI_CREATE_FIELD_INFO  *Info)
{
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_OPERAND_OBJECT     *SecondDesc = NULL;
    ACPI_STATUS             Status;
    UINT32                  AccessByteWidth;
    UINT32                  Type;


    FUNC5 (ExPrepFieldValue);


    /* Parameter validation */

    if (Info->FieldType != ACPI_TYPE_LOCAL_INDEX_FIELD)
    {
        if (!Info->RegionNode)
        {
            FUNC3 ((AE_INFO, "Null RegionNode"));
            FUNC19 (AE_AML_NO_OPERAND);
        }

        Type = FUNC12 (Info->RegionNode);
        if (Type != ACPI_TYPE_REGION)
        {
            FUNC3 ((AE_INFO, "Needed Region, found type 0x%X (%s)",
                Type, FUNC17 (Type)));

            FUNC19 (AE_AML_OPERAND_TYPE);
        }
    }

    /* Allocate a new field object */

    ObjDesc = FUNC14 (Info->FieldType);
    if (!ObjDesc)
    {
        FUNC19 (AE_NO_MEMORY);
    }

    /* Initialize areas of the object that are common to all fields */

    ObjDesc->CommonField.Node = Info->FieldNode;
    Status = FUNC9 (ObjDesc,
        Info->FieldFlags, Info->Attribute,
        Info->FieldBitPosition, Info->FieldBitLength);
    if (FUNC4 (Status))
    {
        FUNC15 (ObjDesc);
        FUNC19 (Status);
    }

    /* Initialize areas of the object that are specific to the field type */

    switch (Info->FieldType)
    {
    case ACPI_TYPE_LOCAL_REGION_FIELD:

        ObjDesc->Field.RegionObj = FUNC11 (Info->RegionNode);

        /* Fields specific to GenericSerialBus fields */

        ObjDesc->Field.AccessLength = Info->AccessLength;

        if (Info->ConnectionNode)
        {
            SecondDesc = Info->ConnectionNode->Object;
            if (!(SecondDesc->Common.Flags & AOPOBJ_DATA_VALID))
            {
                Status = FUNC8 (SecondDesc);
                if (FUNC4 (Status))
                {
                    FUNC15 (ObjDesc);
                    FUNC19 (Status);
                }
            }

            ObjDesc->Field.ResourceBuffer =
                SecondDesc->Buffer.Pointer;
            ObjDesc->Field.ResourceLength =
                (UINT16) SecondDesc->Buffer.Length;
        }
        else if (Info->ResourceBuffer)
        {
            ObjDesc->Field.ResourceBuffer = Info->ResourceBuffer;
            ObjDesc->Field.ResourceLength = Info->ResourceLength;
        }

        ObjDesc->Field.PinNumberIndex = Info->PinNumberIndex;

        /* Allow full data read from EC address space */

        if ((ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_EC) &&
            (ObjDesc->CommonField.BitLength > 8))
        {
            AccessByteWidth = FUNC6 (
                ObjDesc->CommonField.BitLength);

            /* Maximum byte width supported is 255 */

            if (AccessByteWidth < 256)
            {
                ObjDesc->CommonField.AccessByteWidth =
                    (UINT8) AccessByteWidth;
            }
        }

        /* An additional reference for the container */

        FUNC13 (ObjDesc->Field.RegionObj);

        FUNC1 ((ACPI_DB_BFIELD,
            "RegionField: BitOff %X, Off %X, Gran %X, Region %p\n",
            ObjDesc->Field.StartFieldBitOffset,
            ObjDesc->Field.BaseByteOffset,
            ObjDesc->Field.AccessByteWidth,
            ObjDesc->Field.RegionObj));
        break;

    case ACPI_TYPE_LOCAL_BANK_FIELD:

        ObjDesc->BankField.Value = Info->BankValue;
        ObjDesc->BankField.RegionObj =
            FUNC11 (Info->RegionNode);
        ObjDesc->BankField.BankObj =
            FUNC11 (Info->RegisterNode);

        /* An additional reference for the attached objects */

        FUNC13 (ObjDesc->BankField.RegionObj);
        FUNC13 (ObjDesc->BankField.BankObj);

        FUNC1 ((ACPI_DB_BFIELD,
            "Bank Field: BitOff %X, Off %X, Gran %X, Region %p, BankReg %p\n",
            ObjDesc->BankField.StartFieldBitOffset,
            ObjDesc->BankField.BaseByteOffset,
            ObjDesc->Field.AccessByteWidth,
            ObjDesc->BankField.RegionObj,
            ObjDesc->BankField.BankObj));

        /*
         * Remember location in AML stream of the field unit
         * opcode and operands -- since the BankValue
         * operands must be evaluated.
         */
        SecondDesc = ObjDesc->Common.NextObject;
        SecondDesc->Extra.AmlStart = FUNC0 (ACPI_PARSE_OBJECT,
            Info->DataRegisterNode)->Named.Data;
        SecondDesc->Extra.AmlLength = FUNC0 (ACPI_PARSE_OBJECT,
            Info->DataRegisterNode)->Named.Length;

        break;

    case ACPI_TYPE_LOCAL_INDEX_FIELD:

        /* Get the Index and Data registers */

        ObjDesc->IndexField.IndexObj =
            FUNC11 (Info->RegisterNode);
        ObjDesc->IndexField.DataObj =
            FUNC11 (Info->DataRegisterNode);

        if (!ObjDesc->IndexField.DataObj || !ObjDesc->IndexField.IndexObj)
        {
            FUNC3 ((AE_INFO, "Null Index Object during field prep"));
            FUNC15 (ObjDesc);
            FUNC19 (AE_AML_INTERNAL);
        }

        /* An additional reference for the attached objects */

        FUNC13 (ObjDesc->IndexField.DataObj);
        FUNC13 (ObjDesc->IndexField.IndexObj);

        /*
         * April 2006: Changed to match MS behavior
         *
         * The value written to the Index register is the byte offset of the
         * target field in units of the granularity of the IndexField
         *
         * Previously, the value was calculated as an index in terms of the
         * width of the Data register, as below:
         *
         *      ObjDesc->IndexField.Value = (UINT32)
         *          (Info->FieldBitPosition / ACPI_MUL_8 (
         *              ObjDesc->Field.AccessByteWidth));
         *
         * February 2006: Tried value as a byte offset:
         *      ObjDesc->IndexField.Value = (UINT32)
         *          ACPI_DIV_8 (Info->FieldBitPosition);
         */
        ObjDesc->IndexField.Value = (UINT32) FUNC7 (
            FUNC2 (Info->FieldBitPosition),
            ObjDesc->IndexField.AccessByteWidth);

        FUNC1 ((ACPI_DB_BFIELD,
            "IndexField: BitOff %X, Off %X, Value %X, "
            "Gran %X, Index %p, Data %p\n",
            ObjDesc->IndexField.StartFieldBitOffset,
            ObjDesc->IndexField.BaseByteOffset,
            ObjDesc->IndexField.Value,
            ObjDesc->Field.AccessByteWidth,
            ObjDesc->IndexField.IndexObj,
            ObjDesc->IndexField.DataObj));
        break;

    default:

        /* No other types should get here */

        break;
    }

    /*
     * Store the constructed descriptor (ObjDesc) into the parent Node,
     * preserving the current type of that NamedObj.
     */
    Status = FUNC10 (
        Info->FieldNode, ObjDesc, FUNC12 (Info->FieldNode));

    FUNC1 ((ACPI_DB_BFIELD,
        "Set NamedObj %p [%4.4s], ObjDesc %p\n",
        Info->FieldNode, FUNC16 (Info->FieldNode), ObjDesc));

    /* Remove local reference to the object */

    FUNC18 (ObjDesc);
    FUNC19 (Status);
}