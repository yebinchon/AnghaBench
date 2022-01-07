
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ResourceOrder; int SystemLevel; } ;
union acpi_object {TYPE_2__ PowerResource; } ;
struct acpi_power_resource {int order; int system_level; int name; int reference; struct acpi_device* device; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_6__ {int bus_id; } ;
struct acpi_device {TYPE_3__ power; int handle; struct acpi_power_resource* driver_data; TYPE_1__ pnp; } ;
struct TYPE_9__ {int member_0; union acpi_object* member_1; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_OBJECT ;
typedef TYPE_4__ ACPI_BUFFER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_POWER_CLASS ;
 int ACPI_POWER_DEVICE_NAME ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3 ;
 int ACPI_STATE_UNKNOWN ;
 int AE_OK ;
 int AcpiEvaluateObject (int ,int *,int *,TYPE_4__*) ;
 int DPRINT (char*,int ,int ,char*) ;
 struct acpi_power_resource* ExAllocatePoolWithTag (int ,int,char) ;
 int ExFreePool (struct acpi_power_resource*) ;
 int INIT_LIST_HEAD (int *) ;
 int NonPagedPool ;
 int acpi_device_bid (struct acpi_device*) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_power_get_state (int ,int*) ;
 int return_VALUE (int) ;
 int strcpy (int ,int ) ;

int
acpi_power_add (
 struct acpi_device *device)
{
 int result = 0, state;
 ACPI_STATUS status = AE_OK;
 struct acpi_power_resource *resource = ((void*)0);
 union acpi_object acpi_object;
 ACPI_BUFFER buffer = {sizeof(ACPI_OBJECT), &acpi_object};


 if (!device)
  return_VALUE(-1);

 resource = ExAllocatePoolWithTag(NonPagedPool,sizeof(struct acpi_power_resource),'IPCA');
 if (!resource)
  return_VALUE(-4);

 resource->device = device;

 INIT_LIST_HEAD(&resource->reference);

 strcpy(resource->name, device->pnp.bus_id);
 strcpy(acpi_device_name(device), ACPI_POWER_DEVICE_NAME);
 strcpy(acpi_device_class(device), ACPI_POWER_CLASS);
 device->driver_data = resource;


 status = AcpiEvaluateObject(device->handle, ((void*)0), ((void*)0), &buffer);
 if (ACPI_FAILURE(status)) {
  result = -15;
  goto end;
 }
 resource->system_level = acpi_object.PowerResource.SystemLevel;
 resource->order = acpi_object.PowerResource.ResourceOrder;

 result = acpi_power_get_state(device->handle, &state);
 if (result)
  goto end;

 switch (state) {
 case 128:
  device->power.state = ACPI_STATE_D0;
  break;
 case 129:
  device->power.state = ACPI_STATE_D3;
  break;
 default:
  device->power.state = ACPI_STATE_UNKNOWN;
  break;
 }


 DPRINT("%s [%s] (%s)\n", acpi_device_name(device),
  acpi_device_bid(device), state?"on":"off");

end:
 if (result)
  ExFreePool(resource);

 return result;
}
