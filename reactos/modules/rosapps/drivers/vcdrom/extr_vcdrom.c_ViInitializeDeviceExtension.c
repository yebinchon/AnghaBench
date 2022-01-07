
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {scalar_t__ Length; scalar_t__ MaximumLength; int * Buffer; } ;
struct TYPE_6__ {scalar_t__ Length; scalar_t__ MaximumLength; int * Buffer; } ;
struct TYPE_9__ {TYPE_2__ ImageName; TYPE_1__ GlobalName; scalar_t__ ChangeCount; int * VolumeObject; TYPE_3__* DeviceObject; } ;
struct TYPE_8__ {TYPE_4__* DeviceExtension; } ;
typedef TYPE_3__* PDEVICE_OBJECT ;
typedef TYPE_4__* PDEVICE_EXTENSION ;



VOID
ViInitializeDeviceExtension(PDEVICE_OBJECT DeviceObject)
{
    PDEVICE_EXTENSION DeviceExtension;

    DeviceExtension = DeviceObject->DeviceExtension;


    DeviceExtension->DeviceObject = DeviceObject;
    DeviceExtension->VolumeObject = ((void*)0);
    DeviceExtension->ChangeCount = 0;
    DeviceExtension->GlobalName.Buffer = ((void*)0);
    DeviceExtension->GlobalName.MaximumLength = 0;
    DeviceExtension->GlobalName.Length = 0;
    DeviceExtension->ImageName.Buffer = ((void*)0);
    DeviceExtension->ImageName.MaximumLength = 0;
    DeviceExtension->ImageName.Length = 0;
}
