
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_driver {int ids; } ;
struct TYPE_6__ {TYPE_4__* cid_list; int hardware_id; } ;
struct TYPE_7__ {scalar_t__ compatible_ids; scalar_t__ hardware_id; } ;
struct acpi_device {TYPE_2__ pnp; TYPE_3__ flags; } ;
struct TYPE_8__ {int Count; TYPE_1__* Ids; } ;
struct TYPE_5__ {int String; } ;
typedef TYPE_4__ ACPI_PNP_DEVICE_ID_LIST ;


 scalar_t__ strstr (int ,int ) ;

__attribute__((used)) static int
acpi_bus_match (
 struct acpi_device *device,
 struct acpi_driver *driver)
{
 int error = 0;

 if (device->flags.hardware_id)
  if (strstr(driver->ids, device->pnp.hardware_id))
   goto Done;

 if (device->flags.compatible_ids) {
  ACPI_PNP_DEVICE_ID_LIST *cid_list = device->pnp.cid_list;
  int i;


  for (i = 0; i < cid_list->Count; i++)
  {
   if (strstr(driver->ids, cid_list->Ids[i].String))
    goto Done;
  }
 }
 error = -2;

 Done:

 return error;
}
