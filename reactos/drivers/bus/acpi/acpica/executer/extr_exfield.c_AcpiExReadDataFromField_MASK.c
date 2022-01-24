#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_28__ {int /*<<< orphan*/  FieldFlags; int /*<<< orphan*/  BaseByteOffset; int /*<<< orphan*/  StartFieldBitOffset; int /*<<< orphan*/  BitLength; } ;
struct TYPE_27__ {scalar_t__ Type; int Flags; } ;
struct TYPE_26__ {int /*<<< orphan*/  BitLength; scalar_t__ BaseByteOffset; TYPE_5__* RegionObj; } ;
struct TYPE_22__ {int /*<<< orphan*/  Value; } ;
struct TYPE_21__ {void* Pointer; } ;
struct TYPE_29__ {TYPE_8__ CommonField; TYPE_7__ Common; TYPE_6__ Field; TYPE_2__ Integer; TYPE_1__ Buffer; } ;
struct TYPE_24__ {scalar_t__ InternalPccBuffer; } ;
struct TYPE_23__ {scalar_t__ SpaceId; } ;
struct TYPE_25__ {TYPE_4__ Field; TYPE_3__ Region; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_SIZE ;
typedef  TYPE_9__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_GPIO ; 
 scalar_t__ ACPI_ADR_SPACE_GSBUS ; 
 scalar_t__ ACPI_ADR_SPACE_IPMI ; 
 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ; 
 scalar_t__ ACPI_ADR_SPACE_SMBUS ; 
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_BUFFER_FIELD ; 
 scalar_t__ ACPI_TYPE_LOCAL_REGION_FIELD ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ AcpiGbl_IntegerByteWidth ; 
 TYPE_9__* FUNC10 (scalar_t__) ; 
 TYPE_9__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*) ; 
 int /*<<< orphan*/  ExReadDataFromField ; 
 int /*<<< orphan*/  FUNC13 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC15 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_OPERAND_OBJECT     **RetBufferDesc)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *BufferDesc;
    void                    *Buffer;
    UINT32                  BufferLength;


    FUNC2 (ExReadDataFromField, ObjDesc);


    /* Parameter validation */

    if (!ObjDesc)
    {
        FUNC14 (AE_AML_NO_OPERAND);
    }
    if (!RetBufferDesc)
    {
        FUNC14 (AE_BAD_PARAMETER);
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
                FUNC14 (Status);
            }
        }
    }
    else if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_SMBUS ||
         ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GSBUS ||
         ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_IPMI))
    {
        /* SMBus, GSBus, IPMI serial */

        Status = FUNC8 (ObjDesc, RetBufferDesc);
        FUNC14 (Status);
    }

    /*
     * Allocate a buffer for the contents of the field.
     *
     * If the field is larger than the current integer width, create
     * a BUFFER to hold it. Otherwise, use an INTEGER. This allows
     * the use of arithmetic operators on the returned value if the
     * field size is equal or smaller than an Integer.
     *
     * Note: Field.length is in bits.
     */
    BufferLength = (ACPI_SIZE) FUNC3 (
        ObjDesc->Field.BitLength);

    if (BufferLength > AcpiGbl_IntegerByteWidth)
    {
        /* Field is too large for an Integer, create a Buffer instead */

        BufferDesc = FUNC10 (BufferLength);
        if (!BufferDesc)
        {
            FUNC14 (AE_NO_MEMORY);
        }
        Buffer = BufferDesc->Buffer.Pointer;
    }
    else
    {
        /* Field will fit within an Integer (normal case) */

        BufferDesc = FUNC11 ((UINT64) 0);
        if (!BufferDesc)
        {
            FUNC14 (AE_NO_MEMORY);
        }

        BufferLength = AcpiGbl_IntegerByteWidth;
        Buffer = &BufferDesc->Integer.Value;
    }

    if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GPIO))
    {
        /* General Purpose I/O */

        Status = FUNC7 (ObjDesc, Buffer);
        goto Exit;
    }
    else if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_PLATFORM_COMM))
    {
        /*
         * Reading from a PCC field unit does not require the handler because
         * it only requires reading from the InternalPccBuffer.
         */
        FUNC0 ((ACPI_DB_BFIELD,
            "PCC FieldRead bits %u\n", ObjDesc->Field.BitLength));

        FUNC13 (Buffer, ObjDesc->Field.RegionObj->Field.InternalPccBuffer +
        ObjDesc->Field.BaseByteOffset, (ACPI_SIZE) FUNC3 (
            ObjDesc->Field.BitLength));

        *RetBufferDesc = BufferDesc;
        return AE_OK;
    }

    FUNC0 ((ACPI_DB_BFIELD,
        "FieldRead [TO]:   Obj %p, Type %X, Buf %p, ByteLen %X\n",
        ObjDesc, ObjDesc->Common.Type, Buffer, BufferLength));
    FUNC0 ((ACPI_DB_BFIELD,
        "FieldRead [FROM]: BitLen %X, BitOff %X, ByteOff %X\n",
        ObjDesc->CommonField.BitLength,
        ObjDesc->CommonField.StartFieldBitOffset,
        ObjDesc->CommonField.BaseByteOffset));

    /* Lock entire transaction if requested */

    FUNC5 (ObjDesc->CommonField.FieldFlags);

    /* Read from the field */

    Status = FUNC6 (ObjDesc, Buffer, BufferLength);
    FUNC9 (ObjDesc->CommonField.FieldFlags);


Exit:
    if (FUNC1 (Status))
    {
        FUNC12 (BufferDesc);
    }
    else
    {
        *RetBufferDesc = BufferDesc;
    }

    FUNC14 (Status);
}