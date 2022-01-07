
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_6__ {size_t NumberOfPipes; TYPE_1__* Pipes; } ;
struct TYPE_5__ {scalar_t__ PipeType; int EndpointAddress; } ;
typedef TYPE_1__* PUSBD_PIPE_INFORMATION ;
typedef TYPE_2__* PUSBD_INTERFACE_INFORMATION ;


 int ASSERT (size_t) ;
 int USB_ENDPOINT_DIRECTION_MASK ;
 scalar_t__ UsbdPipeTypeInterrupt ;

PUSBD_PIPE_INFORMATION
HidUsb_GetInputInterruptInterfaceHandle(
    PUSBD_INTERFACE_INFORMATION InterfaceInformation)
{
    ULONG Index;




    ASSERT(InterfaceInformation->NumberOfPipes);

    for (Index = 0; Index < InterfaceInformation->NumberOfPipes; Index++)
    {

        if (InterfaceInformation->Pipes[Index].PipeType == UsbdPipeTypeInterrupt && (InterfaceInformation->Pipes[Index].EndpointAddress & USB_ENDPOINT_DIRECTION_MASK))
        {



            return &InterfaceInformation->Pipes[Index];
        }
    }




    return ((void*)0);
}
