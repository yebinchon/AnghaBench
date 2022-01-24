#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_12__ ;
typedef  struct TYPE_21__   TYPE_11__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
typedef  int /*<<< orphan*/  USB_CONFIGURATION_DESCRIPTOR ;
typedef  scalar_t__ ULONG_PTR ;
typedef  size_t ULONG ;
typedef  scalar_t__ UCHAR ;
struct TYPE_26__ {size_t TransferBufferLength; TYPE_5__* TransferBuffer; } ;
struct TYPE_28__ {TYPE_4__ UrbControlDescriptorRequest; } ;
struct TYPE_27__ {scalar_t__ bInterfaceNumber; size_t bLength; scalar_t__ wTotalLength; scalar_t__ bDescriptorType; size_t bNumInterfaces; int /*<<< orphan*/  bAlternateSetting; } ;
struct TYPE_24__ {scalar_t__ Argument1; } ;
struct TYPE_25__ {TYPE_2__ Others; } ;
struct TYPE_23__ {size_t NumberOfInterfaces; TYPE_5__** InterfaceDescriptorList; } ;
struct TYPE_22__ {scalar_t__ DeviceExtension; } ;
struct TYPE_21__ {TYPE_3__ Parameters; } ;
struct TYPE_20__ {TYPE_1__* FunctionDescriptor; TYPE_5__* ConfigurationDescriptor; } ;
typedef  TYPE_5__* PVOID ;
typedef  TYPE_5__* PUSB_INTERFACE_DESCRIPTOR ;
typedef  TYPE_5__* PUSB_CONFIGURATION_DESCRIPTOR ;
typedef  TYPE_8__* PURB ;
typedef  TYPE_5__* PUCHAR ;
typedef  TYPE_10__* PPDO_DEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_11__* PIO_STACK_LOCATION ;
typedef  TYPE_12__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_11__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 
 scalar_t__ USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE ; 
 scalar_t__ USB_INTERFACE_DESCRIPTOR_TYPE ; 
 size_t FUNC7 (size_t,size_t) ; 

NTSTATUS
FUNC8(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IoStack;
    PPDO_DEVICE_EXTENSION PDODeviceExtension;
    PUSB_CONFIGURATION_DESCRIPTOR ConfigurationDescriptor;
    PUSB_INTERFACE_DESCRIPTOR InterfaceDescriptor;
    ULONG TotalSize, Index;
    ULONG Size;
    PURB Urb;
    PVOID Buffer;
    PUCHAR BufferPtr;
    UCHAR InterfaceNumber;

    //
    // get current stack location
    //
    IoStack = FUNC5(Irp);

    FUNC2("USBCCGP_BuildConfigurationDescriptor\n");

    //
    // get device extension
    //
    PDODeviceExtension = (PPDO_DEVICE_EXTENSION)DeviceObject->DeviceExtension;

    //
    // get configuration descriptor
    //
    ConfigurationDescriptor = PDODeviceExtension->ConfigurationDescriptor;

    //
    // calculate size of configuration descriptor
    //
    TotalSize = sizeof(USB_CONFIGURATION_DESCRIPTOR);

    for (Index = 0; Index < PDODeviceExtension->FunctionDescriptor->NumberOfInterfaces; Index++)
    {
        //
        // get current interface descriptor
        //
        InterfaceDescriptor = PDODeviceExtension->FunctionDescriptor->InterfaceDescriptorList[Index];
        InterfaceNumber = InterfaceDescriptor->bInterfaceNumber;

        //
        // add to size and move to next descriptor
        //
        TotalSize += InterfaceDescriptor->bLength;
        InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);

        do
        {
            if ((ULONG_PTR)InterfaceDescriptor >= ((ULONG_PTR)ConfigurationDescriptor + ConfigurationDescriptor->wTotalLength))
            {
                //
                // reached end of configuration descriptor
                //
                break;
            }

            //
            // association descriptors are removed
            //
            if (InterfaceDescriptor->bDescriptorType != USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE)
            {
                if (InterfaceDescriptor->bDescriptorType == USB_INTERFACE_DESCRIPTOR_TYPE)
                {
                    if (InterfaceNumber != InterfaceDescriptor->bInterfaceNumber)
                    {
                        //
                        // reached next descriptor
                        //
                        break;
                    }

                    //
                    // include alternate descriptor
                    //
                }

                //
                // append size
                //
                TotalSize += InterfaceDescriptor->bLength;
            }

            //
            // move to next descriptor
            //
            InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);
        } while(TRUE);
    }

    //
    // now allocate temporary buffer for the configuration descriptor
    //
    Buffer = FUNC1(NonPagedPool, TotalSize);
    if (!Buffer)
    {
        //
        // failed to allocate buffer
        //
        FUNC3("[USBCCGP] Failed to allocate %lu Bytes\n", TotalSize);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    //
    // first copy the configuration descriptor
    //
    FUNC6(Buffer, ConfigurationDescriptor, sizeof(USB_CONFIGURATION_DESCRIPTOR));
    BufferPtr = (PUCHAR)((ULONG_PTR)Buffer + ConfigurationDescriptor->bLength);

    for (Index = 0; Index < PDODeviceExtension->FunctionDescriptor->NumberOfInterfaces; Index++)
    {
        //
        // get current interface descriptor
        //
        InterfaceDescriptor = PDODeviceExtension->FunctionDescriptor->InterfaceDescriptorList[Index];
        InterfaceNumber = InterfaceDescriptor->bInterfaceNumber;

        //
        // copy descriptor and move to next descriptor
        //
        FUNC6(BufferPtr, InterfaceDescriptor, InterfaceDescriptor->bLength);
        BufferPtr += InterfaceDescriptor->bLength;
        InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);

        do
        {
            if ((ULONG_PTR)InterfaceDescriptor >= ((ULONG_PTR)ConfigurationDescriptor + ConfigurationDescriptor->wTotalLength))
            {
                //
                // reached end of configuration descriptor
                //
                break;
            }

            //
            // association descriptors are removed
            //
            if (InterfaceDescriptor->bDescriptorType != USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE)
            {
                if (InterfaceDescriptor->bDescriptorType == USB_INTERFACE_DESCRIPTOR_TYPE)
                {
                    if (InterfaceNumber != InterfaceDescriptor->bInterfaceNumber)
                    {
                        //
                        // reached next descriptor
                        //
                        break;
                    }

                    //
                    // include alternate descriptor
                    //
                    FUNC2("InterfaceDescriptor %p Alternate %x InterfaceNumber %x\n", InterfaceDescriptor, InterfaceDescriptor->bAlternateSetting, InterfaceDescriptor->bInterfaceNumber);
                }

                //
                // copy descriptor
                //
                FUNC6(BufferPtr, InterfaceDescriptor, InterfaceDescriptor->bLength);
                BufferPtr += InterfaceDescriptor->bLength;
            }

            //
            // move to next descriptor
            //
            InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);
        } while(TRUE);
    }

    //
    // modify configuration descriptor
    //
    ConfigurationDescriptor = Buffer;
    ConfigurationDescriptor->wTotalLength = (USHORT)TotalSize;
    ConfigurationDescriptor->bNumInterfaces = PDODeviceExtension->FunctionDescriptor->NumberOfInterfaces;

    //
    // get urb
    //
    Urb = (PURB)IoStack->Parameters.Others.Argument1;
    FUNC0(Urb);

    //
    // copy descriptor
    //
    Size = FUNC7(TotalSize, Urb->UrbControlDescriptorRequest.TransferBufferLength);
    FUNC6(Urb->UrbControlDescriptorRequest.TransferBuffer, Buffer, Size);

    //
    // store final size
    //
    Urb->UrbControlDescriptorRequest.TransferBufferLength = Size;

    //
    // free buffer
    //
    FUNC4(Buffer);

    //
    // done
    //
    return STATUS_SUCCESS;
}