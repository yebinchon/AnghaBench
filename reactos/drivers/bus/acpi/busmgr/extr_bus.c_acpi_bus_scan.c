
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ present; } ;
struct acpi_device {TYPE_1__ status; struct acpi_device* parent; scalar_t__ handle; } ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_OBJECT_TYPE ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_BUS_TYPE_DEVICE ;
 int ACPI_BUS_TYPE_POWER ;
 int ACPI_BUS_TYPE_PROCESSOR ;
 int ACPI_BUS_TYPE_THERMAL ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_ANY ;

 int ACPI_TYPE_LOCAL_SCOPE ;



 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AcpiGetNextObject (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int AcpiGetParent (scalar_t__,scalar_t__*) ;
 int AcpiGetType (scalar_t__,int*) ;
 int acpi_bus_add (struct acpi_device**,struct acpi_device*,scalar_t__,int) ;
 int return_VALUE (int ) ;

int
acpi_bus_scan (
 struct acpi_device *start)
{
 ACPI_STATUS status = AE_OK;
 struct acpi_device *parent = ((void*)0);
 struct acpi_device *child = ((void*)0);
 ACPI_HANDLE phandle = 0;
 ACPI_HANDLE chandle = 0;
 ACPI_OBJECT_TYPE type = 0;
 UINT32 level = 1;

 if (!start)
  return_VALUE(AE_BAD_PARAMETER);

 parent = start;
 phandle = start->handle;





 while ((level > 0) && parent) {

  status = AcpiGetNextObject(ACPI_TYPE_ANY, phandle,
   chandle, &chandle);




  if (ACPI_FAILURE(status)) {
   level--;
   chandle = phandle;
   AcpiGetParent(phandle, &phandle);
   if (parent->parent)
    parent = parent->parent;
   continue;
  }

  status = AcpiGetType(chandle, &type);
  if (ACPI_FAILURE(status))
   continue;




  if (type == ACPI_TYPE_LOCAL_SCOPE) {
   level++;
   phandle = chandle;
   chandle = 0;
   continue;
  }




  switch (type) {
  case 131:
   type = ACPI_BUS_TYPE_DEVICE;
   break;
  case 129:
   type = ACPI_BUS_TYPE_PROCESSOR;
   break;
  case 128:
   type = ACPI_BUS_TYPE_THERMAL;
   break;
  case 130:
   type = ACPI_BUS_TYPE_POWER;
   break;
  default:
   continue;
  }

  status = acpi_bus_add(&child, parent, chandle, type);
  if (ACPI_FAILURE(status))
   continue;
  if (child->status.present) {
   status = AcpiGetNextObject(ACPI_TYPE_ANY, chandle,
    0, ((void*)0));
   if (ACPI_SUCCESS(status)) {
    level++;
    phandle = chandle;
    chandle = 0;
    parent = child;
   }
  }
 }

 return_VALUE(0);
}
