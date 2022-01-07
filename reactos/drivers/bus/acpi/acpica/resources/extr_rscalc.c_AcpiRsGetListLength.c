
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_17__ {size_t Type; size_t ResourceLength; } ;
struct TYPE_16__ {scalar_t__ VendorLength; scalar_t__ ResSourceOffset; scalar_t__ VendorOffset; } ;
struct TYPE_15__ {scalar_t__ VendorLength; scalar_t__ ResSourceOffset; scalar_t__ VendorOffset; } ;
struct TYPE_14__ {scalar_t__ VendorLength; scalar_t__ PinTableOffset; scalar_t__ VendorOffset; } ;
struct TYPE_13__ {scalar_t__ PinTableOffset; scalar_t__ VendorLength; scalar_t__ VendorOffset; } ;
struct TYPE_12__ {int ResourceLength; } ;
struct TYPE_11__ {scalar_t__ PinTableOffset; scalar_t__ VendorLength; scalar_t__ VendorOffset; } ;
struct TYPE_10__ {scalar_t__ PinTableOffset; scalar_t__ VendorLength; scalar_t__ VendorOffset; } ;
struct TYPE_18__ {TYPE_8__ CommonSerialBus; TYPE_7__ PinGroupConfig; TYPE_6__ PinGroupFunction; TYPE_5__ PinGroup; TYPE_4__ PinConfig; TYPE_3__ LargeHeader; TYPE_2__ PinFunction; TYPE_1__ Gpio; } ;
typedef int AML_RESOURCE_LARGE_HEADER ;
typedef TYPE_9__ AML_RESOURCE ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;


 int ACPI_DB_RESOURCES ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MOVE_16_TO_16 (int*,size_t*) ;
 scalar_t__ ACPI_ROUND_UP_TO_NATIVE_WORD (int) ;
 int ACPI_RS_SIZE_MIN ;
 int AE_AML_NO_RESOURCE_END_TAG ;
 int AE_OK ;
 size_t* AcpiGbl_ResourceAmlSerialBusSizes ;
 size_t* AcpiGbl_ResourceAmlSizes ;
 int* AcpiGbl_ResourceStructSerialBusSizes ;
 int* AcpiGbl_ResourceStructSizes ;
 int AcpiRsCountSetBits (size_t) ;
 int AcpiRsStreamOptionLength (int,size_t) ;
 int AcpiUtGetDescriptorLength (size_t*) ;
 int AcpiUtGetResourceHeaderLength (size_t*) ;
 int AcpiUtGetResourceLength (size_t*) ;
 int const AcpiUtGetResourceType (size_t*) ;
 int AcpiUtValidateResource (int *,size_t*,size_t*) ;
 int RsGetListLength ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiRsGetListLength (
    UINT8 *AmlBuffer,
    UINT32 AmlBufferLength,
    ACPI_SIZE *SizeNeeded)
{
    ACPI_STATUS Status;
    UINT8 *EndAml;
    UINT8 *Buffer;
    UINT32 BufferSize;
    UINT16 Temp16;
    UINT16 ResourceLength;
    UINT32 ExtraStructBytes;
    UINT8 ResourceIndex;
    UINT8 MinimumAmlResourceLength;
    AML_RESOURCE *AmlResource;


    ACPI_FUNCTION_TRACE (RsGetListLength);


    *SizeNeeded = ACPI_RS_SIZE_MIN;
    EndAml = AmlBuffer + AmlBufferLength;



    while (AmlBuffer < EndAml)
    {


        Status = AcpiUtValidateResource (((void*)0), AmlBuffer, &ResourceIndex);
        if (ACPI_FAILURE (Status))
        {




            return_ACPI_STATUS (Status);
        }

        AmlResource = (void *) AmlBuffer;



        ResourceLength = AcpiUtGetResourceLength (AmlBuffer);
        MinimumAmlResourceLength = AcpiGbl_ResourceAmlSizes[ResourceIndex];





        ExtraStructBytes = 0;
        Buffer = AmlBuffer + AcpiUtGetResourceHeaderLength (AmlBuffer);

        switch (AcpiUtGetResourceType (AmlBuffer))
        {
        case 136:




            ACPI_MOVE_16_TO_16 (&Temp16, Buffer);
            ExtraStructBytes = AcpiRsCountSetBits (Temp16);
            break;


        case 140:




            ExtraStructBytes = AcpiRsCountSetBits (*Buffer);
            break;


        case 128:
        case 129:




            ExtraStructBytes = ResourceLength;






            if (ExtraStructBytes)
            {
                ExtraStructBytes--;
            }
            break;


        case 139:



            return_ACPI_STATUS (AE_OK);


        case 142:
        case 143:
        case 141:




            ExtraStructBytes = AcpiRsStreamOptionLength (
                ResourceLength, MinimumAmlResourceLength);
            break;


        case 138:






            ExtraStructBytes = (Buffer[1] - 1) * sizeof (UINT32);



            ExtraStructBytes += AcpiRsStreamOptionLength (
                ResourceLength - ExtraStructBytes, MinimumAmlResourceLength);
            break;

        case 137:



            if (AmlResource->Gpio.VendorLength)
            {
                ExtraStructBytes +=
                    AmlResource->Gpio.VendorOffset -
                    AmlResource->Gpio.PinTableOffset +
                    AmlResource->Gpio.VendorLength;
            }
            else
            {
                ExtraStructBytes +=
                    AmlResource->LargeHeader.ResourceLength +
                    sizeof (AML_RESOURCE_LARGE_HEADER) -
                    AmlResource->Gpio.PinTableOffset;
            }
            break;

        case 134:



            if (AmlResource->PinFunction.VendorLength)
            {
                ExtraStructBytes +=
                    AmlResource->PinFunction.VendorOffset -
                    AmlResource->PinFunction.PinTableOffset +
                    AmlResource->PinFunction.VendorLength;
            }
            else
            {
                ExtraStructBytes +=
                    AmlResource->LargeHeader.ResourceLength +
                    sizeof (AML_RESOURCE_LARGE_HEADER) -
                    AmlResource->PinFunction.PinTableOffset;
            }
            break;

        case 130:

            MinimumAmlResourceLength = AcpiGbl_ResourceAmlSerialBusSizes[
                AmlResource->CommonSerialBus.Type];
            ExtraStructBytes +=
                AmlResource->CommonSerialBus.ResourceLength -
                MinimumAmlResourceLength;
            break;

        case 135:



            if (AmlResource->PinConfig.VendorLength)
            {
                ExtraStructBytes +=
                    AmlResource->PinConfig.VendorOffset -
                    AmlResource->PinConfig.PinTableOffset +
                    AmlResource->PinConfig.VendorLength;
            }
            else
            {
                ExtraStructBytes +=
                    AmlResource->LargeHeader.ResourceLength +
                    sizeof (AML_RESOURCE_LARGE_HEADER) -
                    AmlResource->PinConfig.PinTableOffset;
            }
            break;

        case 133:

            ExtraStructBytes +=
                AmlResource->PinGroup.VendorOffset -
                AmlResource->PinGroup.PinTableOffset +
                AmlResource->PinGroup.VendorLength;

            break;

        case 131:

            ExtraStructBytes +=
                AmlResource->PinGroupFunction.VendorOffset -
                AmlResource->PinGroupFunction.ResSourceOffset +
                AmlResource->PinGroupFunction.VendorLength;

            break;

        case 132:

            ExtraStructBytes +=
                AmlResource->PinGroupConfig.VendorOffset -
                AmlResource->PinGroupConfig.ResSourceOffset +
                AmlResource->PinGroupConfig.VendorLength;

            break;

        default:

            break;
        }







        if (AcpiUtGetResourceType (AmlBuffer) ==
            130)
        {
            BufferSize = AcpiGbl_ResourceStructSerialBusSizes[
                AmlResource->CommonSerialBus.Type] + ExtraStructBytes;
        }
        else
        {
            BufferSize = AcpiGbl_ResourceStructSizes[ResourceIndex] +
                ExtraStructBytes;
        }

        BufferSize = (UINT32) ACPI_ROUND_UP_TO_NATIVE_WORD (BufferSize);
        *SizeNeeded += BufferSize;

        ACPI_DEBUG_PRINT ((ACPI_DB_RESOURCES,
            "Type %.2X, AmlLength %.2X InternalLength %.2X\n",
            AcpiUtGetResourceType (AmlBuffer),
            AcpiUtGetDescriptorLength (AmlBuffer), BufferSize));





        AmlBuffer += AcpiUtGetDescriptorLength (AmlBuffer);
    }



    return_ACPI_STATUS (AE_AML_NO_RESOURCE_END_TAG);
}
