
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int UINT64 ;
typedef scalar_t__ UINT32 ;
struct TYPE_28__ {int FieldFlags; int BaseByteOffset; int StartFieldBitOffset; int BitLength; } ;
struct TYPE_27__ {scalar_t__ Type; int Flags; } ;
struct TYPE_26__ {int BitLength; scalar_t__ BaseByteOffset; TYPE_5__* RegionObj; } ;
struct TYPE_22__ {int Value; } ;
struct TYPE_21__ {void* Pointer; } ;
struct TYPE_29__ {TYPE_8__ CommonField; TYPE_7__ Common; TYPE_6__ Field; TYPE_2__ Integer; TYPE_1__ Buffer; } ;
struct TYPE_24__ {scalar_t__ InternalPccBuffer; } ;
struct TYPE_23__ {scalar_t__ SpaceId; } ;
struct TYPE_25__ {TYPE_4__ Field; TYPE_3__ Region; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_9__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_ADR_SPACE_GPIO ;
 scalar_t__ ACPI_ADR_SPACE_GSBUS ;
 scalar_t__ ACPI_ADR_SPACE_IPMI ;
 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ;
 scalar_t__ ACPI_ADR_SPACE_SMBUS ;
 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_9__*) ;
 scalar_t__ ACPI_ROUND_BITS_UP_TO_BYTES (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER_FIELD ;
 scalar_t__ ACPI_TYPE_LOCAL_REGION_FIELD ;
 int AE_AML_NO_OPERAND ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsGetBufferFieldArguments (TYPE_9__*) ;
 int AcpiExAcquireGlobalLock (int ) ;
 int AcpiExExtractFromField (TYPE_9__*,void*,scalar_t__) ;
 int AcpiExReadGpio (TYPE_9__*,void*) ;
 int AcpiExReadSerialBus (TYPE_9__*,TYPE_9__**) ;
 int AcpiExReleaseGlobalLock (int ) ;
 scalar_t__ AcpiGbl_IntegerByteWidth ;
 TYPE_9__* AcpiUtCreateBufferObject (scalar_t__) ;
 TYPE_9__* AcpiUtCreateIntegerObject (int ) ;
 int AcpiUtRemoveReference (TYPE_9__*) ;
 int ExReadDataFromField ;
 int memcpy (void*,scalar_t__,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExReadDataFromField (
    ACPI_WALK_STATE *WalkState,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_OPERAND_OBJECT **RetBufferDesc)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *BufferDesc;
    void *Buffer;
    UINT32 BufferLength;


    ACPI_FUNCTION_TRACE_PTR (ExReadDataFromField, ObjDesc);




    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_AML_NO_OPERAND);
    }
    if (!RetBufferDesc)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }

    if (ObjDesc->Common.Type == ACPI_TYPE_BUFFER_FIELD)
    {




        if (!(ObjDesc->Common.Flags & AOPOBJ_DATA_VALID))
        {
            Status = AcpiDsGetBufferFieldArguments (ObjDesc);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
        }
    }
    else if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_SMBUS ||
         ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GSBUS ||
         ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_IPMI))
    {


        Status = AcpiExReadSerialBus (ObjDesc, RetBufferDesc);
        return_ACPI_STATUS (Status);
    }
    BufferLength = (ACPI_SIZE) ACPI_ROUND_BITS_UP_TO_BYTES (
        ObjDesc->Field.BitLength);

    if (BufferLength > AcpiGbl_IntegerByteWidth)
    {


        BufferDesc = AcpiUtCreateBufferObject (BufferLength);
        if (!BufferDesc)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }
        Buffer = BufferDesc->Buffer.Pointer;
    }
    else
    {


        BufferDesc = AcpiUtCreateIntegerObject ((UINT64) 0);
        if (!BufferDesc)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }

        BufferLength = AcpiGbl_IntegerByteWidth;
        Buffer = &BufferDesc->Integer.Value;
    }

    if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GPIO))
    {


        Status = AcpiExReadGpio (ObjDesc, Buffer);
        goto Exit;
    }
    else if ((ObjDesc->Common.Type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
        (ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_PLATFORM_COMM))
    {




        ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
            "PCC FieldRead bits %u\n", ObjDesc->Field.BitLength));

        memcpy (Buffer, ObjDesc->Field.RegionObj->Field.InternalPccBuffer +
        ObjDesc->Field.BaseByteOffset, (ACPI_SIZE) ACPI_ROUND_BITS_UP_TO_BYTES (
            ObjDesc->Field.BitLength));

        *RetBufferDesc = BufferDesc;
        return AE_OK;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
        "FieldRead [TO]:   Obj %p, Type %X, Buf %p, ByteLen %X\n",
        ObjDesc, ObjDesc->Common.Type, Buffer, BufferLength));
    ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
        "FieldRead [FROM]: BitLen %X, BitOff %X, ByteOff %X\n",
        ObjDesc->CommonField.BitLength,
        ObjDesc->CommonField.StartFieldBitOffset,
        ObjDesc->CommonField.BaseByteOffset));



    AcpiExAcquireGlobalLock (ObjDesc->CommonField.FieldFlags);



    Status = AcpiExExtractFromField (ObjDesc, Buffer, BufferLength);
    AcpiExReleaseGlobalLock (ObjDesc->CommonField.FieldFlags);


Exit:
    if (ACPI_FAILURE (Status))
    {
        AcpiUtRemoveReference (BufferDesc);
    }
    else
    {
        *RetBufferDesc = BufferDesc;
    }

    return_ACPI_STATUS (Status);
}
