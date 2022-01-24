#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT32 ;
struct TYPE_33__ {int /*<<< orphan*/  FieldFlags; int /*<<< orphan*/  BaseByteOffset; int /*<<< orphan*/  StartFieldBitOffset; int /*<<< orphan*/  BitLength; } ;
struct TYPE_32__ {int Type; int Flags; } ;
struct TYPE_31__ {int Length; void* Pointer; } ;
struct TYPE_30__ {int Length; void* Pointer; } ;
struct TYPE_29__ {int /*<<< orphan*/  Value; } ;
struct TYPE_28__ {TYPE_3__* RegionObj; scalar_t__ BaseByteOffset; int /*<<< orphan*/  BitLength; } ;
struct TYPE_26__ {scalar_t__ InternalPccBuffer; } ;
struct TYPE_25__ {scalar_t__ SpaceId; scalar_t__ Address; } ;
struct TYPE_27__ {TYPE_2__ Field; TYPE_1__ Region; } ;
struct TYPE_24__ {TYPE_9__ CommonField; TYPE_8__ Common; TYPE_7__ String; TYPE_6__ Buffer; TYPE_5__ Integer; TYPE_4__ Field; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int ACPI_SIZE ;
typedef  TYPE_10__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_GPIO ; 
 scalar_t__ ACPI_ADR_SPACE_GSBUS ; 
 scalar_t__ ACPI_ADR_SPACE_IPMI ; 
 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ; 
 scalar_t__ ACPI_ADR_SPACE_SMBUS ; 
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 130 
 int ACPI_TYPE_BUFFER_FIELD ; 
#define  ACPI_TYPE_INTEGER 129 
 int ACPI_TYPE_LOCAL_REGION_FIELD ; 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  ACPI_WRITE ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,TYPE_10__*,TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*,TYPE_10__*,TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  ExWriteDataToField ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ PCC_MASTER_SUBSPACE ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC16 (
    ACPI_OPERAND_OBJECT     *SourceDesc,
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_OPERAND_OBJECT     **ResultDesc)
{
    ACPI_STATUS             Status;
    UINT32                  BufferLength;
    UINT32                  DataLength;
    void                    *Buffer;


    FUNC2 (ExWriteDataToField, ObjDesc);


    /* Parameter validation */

    if (!SourceDesc || !ObjDesc)
    {
        FUNC15 (AE_AML_NO_OPERAND);
    }

    if (ObjDesc->Common.Type == ACPI_TYPE_BUFFER_FIELD)
    {
        /*
         * If the BufferField arguments have not been previously evaluated,
         * evaluate them now and save the results.
         */
        if (!(ObjDesc->Common.Flags & AOPOBJ_DATA_VALID))
        {
            Status = FUNC4 (ObjDesc);
            if (FUNC1 (Status))
            {
                FUNC15 (Status);
            }
        }
    }
    else if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GPIO))
    {
        /* General Purpose I/O */

        Status = FUNC9 (SourceDesc, ObjDesc, ResultDesc);
        FUNC15 (Status);
    }
    else if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_SMBUS ||
         ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GSBUS ||
         ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_IPMI))
    {
        /* SMBus, GSBus, IPMI serial */

        Status = FUNC10 (SourceDesc, ObjDesc, ResultDesc);
        FUNC15 (Status);
    }
    else if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
             (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_PLATFORM_COMM))
    {
        /*
         * According to the spec a write to the COMD field will invoke the
         * region handler. Otherwise, write to the PccInternal buffer. This
         * implementation will use the offsets specified rather than the name
         * of the field. This is considered safer because some firmware tools
         * are known to obfiscate named objects.
         */
        DataLength = (ACPI_SIZE) FUNC3 (
            ObjDesc->Field.BitLength);
        FUNC14 (ObjDesc->Field.RegionObj->Field.InternalPccBuffer +
            ObjDesc->Field.BaseByteOffset,
            SourceDesc->Buffer.Pointer, DataLength);

        if ((ObjDesc->Field.RegionObj->Region.Address == PCC_MASTER_SUBSPACE &&
           FUNC13 (ObjDesc->Field.BaseByteOffset)) ||
           FUNC12 (ObjDesc->Field.BaseByteOffset))
        {
            /* Perform the write */

            FUNC0 ((ACPI_DB_BFIELD,
                "PCC COMD field has been written. Invoking PCC handler now.\n"));

            Status = FUNC5 (
                ObjDesc, 0, (UINT64 *) ObjDesc->Field.RegionObj->Field.InternalPccBuffer,
                ACPI_WRITE);
            FUNC15 (Status);
        }
        return (AE_OK);
    }


    /* Get a pointer to the data to be written */

    switch (SourceDesc->Common.Type)
    {
    case ACPI_TYPE_INTEGER:

        Buffer = &SourceDesc->Integer.Value;
        BufferLength = sizeof (SourceDesc->Integer.Value);
        break;

    case ACPI_TYPE_BUFFER:

        Buffer = SourceDesc->Buffer.Pointer;
        BufferLength = SourceDesc->Buffer.Length;
        break;

    case ACPI_TYPE_STRING:

        Buffer = SourceDesc->String.Pointer;
        BufferLength = SourceDesc->String.Length;
        break;

    default:
        FUNC15 (AE_AML_OPERAND_TYPE);
    }

    FUNC0 ((ACPI_DB_BFIELD,
        "FieldWrite [FROM]: Obj %p (%s:%X), Buf %p, ByteLen %X\n",
        SourceDesc, FUNC11 (SourceDesc->Common.Type),
        SourceDesc->Common.Type, Buffer, BufferLength));

    FUNC0 ((ACPI_DB_BFIELD,
        "FieldWrite [TO]:   Obj %p (%s:%X), BitLen %X, BitOff %X, ByteOff %X\n",
        ObjDesc, FUNC11 (ObjDesc->Common.Type),
        ObjDesc->Common.Type,
        ObjDesc->CommonField.BitLength,
        ObjDesc->CommonField.StartFieldBitOffset,
        ObjDesc->CommonField.BaseByteOffset));

    /* Lock entire transaction if requested */

    FUNC6 (ObjDesc->CommonField.FieldFlags);

    /* Write to the field */

    Status = FUNC7 (ObjDesc, Buffer, BufferLength);
    FUNC8 (ObjDesc->CommonField.FieldFlags);
    FUNC15 (Status);
}