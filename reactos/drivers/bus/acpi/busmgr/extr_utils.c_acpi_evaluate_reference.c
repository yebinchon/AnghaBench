
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct acpi_handle_list {size_t count; scalar_t__* handles; } ;
typedef size_t UINT32 ;
struct TYPE_9__ {scalar_t__ Length; scalar_t__ Pointer; int * member_1; int member_0; } ;
struct TYPE_7__ {scalar_t__ Handle; } ;
struct TYPE_6__ {scalar_t__ Count; TYPE_3__* Elements; } ;
struct TYPE_8__ {scalar_t__ Type; TYPE_2__ Reference; int type; TYPE_1__ Package; } ;
typedef int ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef int ACPI_OBJECT_LIST ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_4__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_DB_ERROR ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (char*) ;
 scalar_t__ ACPI_MAX_HANDLES ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_BAD_DATA ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_NULL_ENTRY ;
 int AE_OK ;
 int AcpiEvaluateObject (int ,int ,int *,TYPE_4__*) ;
 int AcpiOsFree (scalar_t__) ;
 int acpi_util_eval_error (int ,int ,int ) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
acpi_evaluate_reference (
 ACPI_HANDLE handle,
 ACPI_STRING pathname,
 ACPI_OBJECT_LIST *arguments,
 struct acpi_handle_list *list)
{
 ACPI_STATUS status = AE_OK;
 ACPI_OBJECT *package = ((void*)0);
 ACPI_OBJECT *element = ((void*)0);
 ACPI_BUFFER buffer = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 UINT32 i = 0;

 ACPI_FUNCTION_TRACE("acpi_evaluate_reference");

 if (!list) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 status = AcpiEvaluateObject(handle, pathname, arguments, &buffer);
 if (ACPI_FAILURE(status))
  goto end;

 package = (ACPI_OBJECT *) buffer.Pointer;

 if ((buffer.Length == 0) || !package) {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
   "No return object (len %X ptr %p)\n",
   buffer.Length, package));
  status = AE_BAD_DATA;
  acpi_util_eval_error(handle, pathname, status);
  goto end;
 }
 if (package->Type != ACPI_TYPE_PACKAGE) {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
   "Expecting a [Package], found type %X\n",
   package->Type));
  status = AE_BAD_DATA;
  acpi_util_eval_error(handle, pathname, status);
  goto end;
 }
 if (!package->Package.Count) {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
   "[Package] has zero elements (%p)\n",
   package));
  status = AE_BAD_DATA;
  acpi_util_eval_error(handle, pathname, status);
  goto end;
 }

 if (package->Package.Count > ACPI_MAX_HANDLES) {
  return AE_NO_MEMORY;
 }
 list->count = package->Package.Count;



 for (i = 0; i < list->count; i++) {

  element = &(package->Package.Elements[i]);

  if (element->Type != ACPI_TYPE_LOCAL_REFERENCE) {
   status = AE_BAD_DATA;
   ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
    "Expecting a [Reference] package element, found type %X\n",
    element->type));
   acpi_util_eval_error(handle, pathname, status);
   break;
  }

  if (!element->Reference.Handle) {
   ACPI_DEBUG_PRINT((ACPI_DB_ERROR, "Invalid reference in"
          " package %s\n", pathname));
   status = AE_NULL_ENTRY;
   break;
  }


  list->handles[i] = element->Reference.Handle;
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found reference [%p]\n",
   list->handles[i]));
 }

end:
 if (ACPI_FAILURE(status)) {
  list->count = 0;

 }

    if (buffer.Pointer)
        AcpiOsFree(buffer.Pointer);

 return_ACPI_STATUS(status);
}
