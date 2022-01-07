
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef scalar_t__ USHORT ;
typedef int USB_CONFIGURATION_DESCRIPTOR ;
typedef scalar_t__ ULONG_PTR ;
typedef size_t ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_26__ {size_t TransferBufferLength; TYPE_5__* TransferBuffer; } ;
struct TYPE_28__ {TYPE_4__ UrbControlDescriptorRequest; } ;
struct TYPE_27__ {scalar_t__ bInterfaceNumber; size_t bLength; scalar_t__ wTotalLength; scalar_t__ bDescriptorType; size_t bNumInterfaces; int bAlternateSetting; } ;
struct TYPE_24__ {scalar_t__ Argument1; } ;
struct TYPE_25__ {TYPE_2__ Others; } ;
struct TYPE_23__ {size_t NumberOfInterfaces; TYPE_5__** InterfaceDescriptorList; } ;
struct TYPE_22__ {scalar_t__ DeviceExtension; } ;
struct TYPE_21__ {TYPE_3__ Parameters; } ;
struct TYPE_20__ {TYPE_1__* FunctionDescriptor; TYPE_5__* ConfigurationDescriptor; } ;
typedef TYPE_5__* PVOID ;
typedef TYPE_5__* PUSB_INTERFACE_DESCRIPTOR ;
typedef TYPE_5__* PUSB_CONFIGURATION_DESCRIPTOR ;
typedef TYPE_8__* PURB ;
typedef TYPE_5__* PUCHAR ;
typedef TYPE_10__* PPDO_DEVICE_EXTENSION ;
typedef int PIRP ;
typedef TYPE_11__* PIO_STACK_LOCATION ;
typedef TYPE_12__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ASSERT (TYPE_8__*) ;
 TYPE_5__* AllocateItem (int ,size_t) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*,size_t) ;
 int FreeItem (TYPE_5__*) ;
 TYPE_11__* IoGetCurrentIrpStackLocation (int ) ;
 int NonPagedPool ;
 int RtlCopyMemory (TYPE_5__*,TYPE_5__*,size_t) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 scalar_t__ USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE ;
 scalar_t__ USB_INTERFACE_DESCRIPTOR_TYPE ;
 size_t min (size_t,size_t) ;

NTSTATUS
USBCCGP_BuildConfigurationDescriptor(
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




    IoStack = IoGetCurrentIrpStackLocation(Irp);

    DPRINT("USBCCGP_BuildConfigurationDescriptor\n");




    PDODeviceExtension = (PPDO_DEVICE_EXTENSION)DeviceObject->DeviceExtension;




    ConfigurationDescriptor = PDODeviceExtension->ConfigurationDescriptor;




    TotalSize = sizeof(USB_CONFIGURATION_DESCRIPTOR);

    for (Index = 0; Index < PDODeviceExtension->FunctionDescriptor->NumberOfInterfaces; Index++)
    {



        InterfaceDescriptor = PDODeviceExtension->FunctionDescriptor->InterfaceDescriptorList[Index];
        InterfaceNumber = InterfaceDescriptor->bInterfaceNumber;




        TotalSize += InterfaceDescriptor->bLength;
        InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);

        do
        {
            if ((ULONG_PTR)InterfaceDescriptor >= ((ULONG_PTR)ConfigurationDescriptor + ConfigurationDescriptor->wTotalLength))
            {



                break;
            }




            if (InterfaceDescriptor->bDescriptorType != USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE)
            {
                if (InterfaceDescriptor->bDescriptorType == USB_INTERFACE_DESCRIPTOR_TYPE)
                {
                    if (InterfaceNumber != InterfaceDescriptor->bInterfaceNumber)
                    {



                        break;
                    }




                }




                TotalSize += InterfaceDescriptor->bLength;
            }




            InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);
        } while(TRUE);
    }




    Buffer = AllocateItem(NonPagedPool, TotalSize);
    if (!Buffer)
    {



        DPRINT1("[USBCCGP] Failed to allocate %lu Bytes\n", TotalSize);
        return STATUS_INSUFFICIENT_RESOURCES;
    }




    RtlCopyMemory(Buffer, ConfigurationDescriptor, sizeof(USB_CONFIGURATION_DESCRIPTOR));
    BufferPtr = (PUCHAR)((ULONG_PTR)Buffer + ConfigurationDescriptor->bLength);

    for (Index = 0; Index < PDODeviceExtension->FunctionDescriptor->NumberOfInterfaces; Index++)
    {



        InterfaceDescriptor = PDODeviceExtension->FunctionDescriptor->InterfaceDescriptorList[Index];
        InterfaceNumber = InterfaceDescriptor->bInterfaceNumber;




        RtlCopyMemory(BufferPtr, InterfaceDescriptor, InterfaceDescriptor->bLength);
        BufferPtr += InterfaceDescriptor->bLength;
        InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);

        do
        {
            if ((ULONG_PTR)InterfaceDescriptor >= ((ULONG_PTR)ConfigurationDescriptor + ConfigurationDescriptor->wTotalLength))
            {



                break;
            }




            if (InterfaceDescriptor->bDescriptorType != USB_INTERFACE_ASSOCIATION_DESCRIPTOR_TYPE)
            {
                if (InterfaceDescriptor->bDescriptorType == USB_INTERFACE_DESCRIPTOR_TYPE)
                {
                    if (InterfaceNumber != InterfaceDescriptor->bInterfaceNumber)
                    {



                        break;
                    }




                    DPRINT("InterfaceDescriptor %p Alternate %x InterfaceNumber %x\n", InterfaceDescriptor, InterfaceDescriptor->bAlternateSetting, InterfaceDescriptor->bInterfaceNumber);
                }




                RtlCopyMemory(BufferPtr, InterfaceDescriptor, InterfaceDescriptor->bLength);
                BufferPtr += InterfaceDescriptor->bLength;
            }




            InterfaceDescriptor = (PUSB_INTERFACE_DESCRIPTOR)((ULONG_PTR)InterfaceDescriptor + InterfaceDescriptor->bLength);
        } while(TRUE);
    }




    ConfigurationDescriptor = Buffer;
    ConfigurationDescriptor->wTotalLength = (USHORT)TotalSize;
    ConfigurationDescriptor->bNumInterfaces = PDODeviceExtension->FunctionDescriptor->NumberOfInterfaces;




    Urb = (PURB)IoStack->Parameters.Others.Argument1;
    ASSERT(Urb);




    Size = min(TotalSize, Urb->UrbControlDescriptorRequest.TransferBufferLength);
    RtlCopyMemory(Urb->UrbControlDescriptorRequest.TransferBuffer, Buffer, Size);




    Urb->UrbControlDescriptorRequest.TransferBufferLength = Size;




    FreeItem(Buffer);




    return STATUS_SUCCESS;
}
