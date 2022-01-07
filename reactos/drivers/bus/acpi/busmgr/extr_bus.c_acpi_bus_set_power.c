
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int bus_id; } ;
struct TYPE_14__ {scalar_t__ power_resources; } ;
struct TYPE_15__ {int state; TYPE_6__ flags; TYPE_5__* states; } ;
struct TYPE_9__ {int force_power_state; int power_manageable; } ;
struct acpi_device {TYPE_8__ pnp; TYPE_7__ power; int handle; TYPE_3__* parent; TYPE_1__ flags; } ;
struct TYPE_12__ {scalar_t__ explicit_set; int valid; } ;
struct TYPE_13__ {TYPE_4__ flags; } ;
struct TYPE_10__ {int state; } ;
struct TYPE_11__ {TYPE_2__ power; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3 ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int AcpiEvaluateObject (int ,char*,int *,int *) ;
 int DPRINT (char*,int ,int) ;
 int DPRINT1 (char*,...) ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_bus_get_power (int ,int*) ;
 int acpi_power_transition (struct acpi_device*,int) ;
 int return_VALUE (int) ;

int
acpi_bus_set_power (
 ACPI_HANDLE handle,
 int state)
{
 int result = 0;
 ACPI_STATUS status = AE_OK;
 struct acpi_device *device = ((void*)0);
 char object_name[5] = {'_','P','S','0'+state,'\0'};


 result = acpi_bus_get_device(handle, &device);
 if (result)
  return_VALUE(result);

 if ((state < ACPI_STATE_D0) || (state > ACPI_STATE_D3))
  return_VALUE(AE_BAD_PARAMETER);



 if (!device->flags.power_manageable) {
  DPRINT1( "Device is not power manageable\n");
  return_VALUE(AE_NOT_FOUND);
 }
  acpi_bus_get_power(device->handle, &device->power.state);


 if ((state == device->power.state) && !device->flags.force_power_state) {
  DPRINT1("Device is already at D%d\n", state);
  return 0;
 }
 if (!device->power.states[state].flags.valid) {
  DPRINT1( "Device does not support D%d\n", state);
  return AE_NOT_FOUND;
 }
 if (device->parent && (state < device->parent->power.state)) {
  DPRINT1( "Cannot set device to a higher-powered state than parent\n");
  return AE_NOT_FOUND;
 }
 if (state < device->power.state) {
  if (device->power.flags.power_resources) {
   result = acpi_power_transition(device, state);
   if (result)
    goto end;
  }
  if (device->power.states[state].flags.explicit_set) {
   status = AcpiEvaluateObject(device->handle,
    object_name, ((void*)0), ((void*)0));
   if (ACPI_FAILURE(status)) {
    result = AE_NOT_FOUND;
    goto end;
   }
  }
 }
 else {
  if (device->power.states[state].flags.explicit_set) {
   status = AcpiEvaluateObject(device->handle,
    object_name, ((void*)0), ((void*)0));
   if (ACPI_FAILURE(status)) {
    result = AE_NOT_FOUND;
    goto end;
   }
  }
  if (device->power.flags.power_resources) {
   result = acpi_power_transition(device, state);
   if (result)
    goto end;
  }
 }

end:
 if (result)
  DPRINT( "Error transitioning device [%s] to D%d\n",
   device->pnp.bus_id, state);
 else
  DPRINT("Device [%s] transitioned to D%d\n",
   device->pnp.bus_id, state);

 return result;
}
